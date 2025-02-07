// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

import { createClient } from "https://esm.sh/@supabase/supabase-js@2.32.0";
import { FcmClientApi, serviceAccount } from "../_core/api/fcm_api.ts";
import { NotificationCampaignRepository } from "../_core/repositories/notification_campaign_repository.ts";

/**
 * This function will run every minute and send notifications to users based on the scheduled campaigns.
 */
Deno.serve(async (_) => {
  try {
    const supabase = createClient(
      Deno.env.get("SUPABASE_URL") ?? "",
      Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") ?? "",
    );

    const fcmClient = new FcmClientApi(serviceAccount);
    const notificationRepository = new NotificationCampaignRepository(supabase);
    const campaigns = await notificationRepository.getScheduled();
    if (!campaigns || campaigns.length === 0) {
        return new Response(
            JSON.stringify({ result: "no campaigns" }),
            { headers: { "Content-Type": "application/json" }, status: 200 },
        );
    }
    for (const campaign of campaigns) {
        console.log(`Sending campaign: ${campaign.id} - ${campaign.title} - scheduled at: ${campaign.scheduled_at}`);
        await fcmClient.sendNotificationToTopic({
            notification: {
                title: campaign.title,
                body: campaign.body,
            },
            topic: campaign.channel,
            data: campaign.extra_data,
        });
        await notificationRepository.updateStatus(campaign.id, "sent");
        console.log(`Campaign sent: ${campaign.id}`);
    }

    return new Response(
      JSON.stringify({ result: "ok" }),
      { headers: { "Content-Type": "application/json" }, status: 200 },
    );
  } catch (error) {
    return new Response(
      JSON.stringify({ error: error.message }),
      { headers: { "Content-Type": "application/json" }, status: 500 },
    );
  }
});

/* To invoke locally:

  1. Run `supabase start` (see: https://supabase.com/docs/reference/cli/supabase-start)
  2. Make an HTTP request:

  curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/notifications' \
    --header 'Authorization: Bearer [YOUR_TOKEN]' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Functions"}'

*/
