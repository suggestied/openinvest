// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.32.0";
import { UserRepository } from "../_core/repositories/user_repository.ts";
import { SubscriptionsRepository } from "../_core/repositories/subscription_repository.ts";
import { Subscription } from "../_core/models/subscriptions.ts";
import { RevenueCatEvent } from "../_core/models/revenuecat_events.ts";

const token = Deno.env.get("RC_TOKEN") || ""; 

Deno.serve(async (req) => {
  console.log("request received");
  const authorization = req.headers.get("Authorization");
  if (!authorization) {
    console.log("no authorization header");
    return new Response("Unauthorized", { status: 401 });
  }
  const authorizationBearer = authorization.split(" ")[1];
  if (authorizationBearer != token) {
    console.log(`bad token ${authorization} !== ${token}`);
    return new Response("Unauthorized - invalid token", { status: 401 });
  }
  try {
    const supabase = createClient(
      Deno.env.get("SUPABASE_URL") ?? "",
      Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") ?? "",
    );

    const body = await req.json();
    const event = RevenueCatEvent.fromData({ ...body.event });
    if (event.shouldIgnore) {
      console.log("ignored event");
      return new Response("ignored event", { status: 200 });
    }
    const userRepository = new UserRepository(supabase);
    const subscriptionRepository = new SubscriptionsRepository(supabase);

    const subscription = await Subscription.fromRevenueCat({
      event,
      userRepository: userRepository,
      subscriptionRepository: subscriptionRepository,
    });
    await subscription.save();

    return new Response("Subscription saved", { status: 200 });
  } catch (err) {
    return new Response(String(err?.message ?? err), { status: 500 });
  }
});

/* To invoke locally:

  1. Run `supabase start` (see: https://supabase.com/docs/reference/cli/supabase-start)
  2. Make an HTTP request:

  curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/onSubscriptionUpdateWebhook' \
    --header 'Authorization: Bearer [Your security token]' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Functions"}'

*/
