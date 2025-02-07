// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

import { createClient } from "https://esm.sh/@supabase/supabase-js@2.32.0";
import { NotificationRepository } from "../_core/repositories/notification_repository.ts";
import { DeviceRepository } from "../_core/repositories/device_repository.ts";
import { NotificationEntity } from "../_core/entities/notification_entity.ts";
import { Notification } from "../_core/models/notifications.ts";
import { FcmClientApi, serviceAccount } from "../_core/api/fcm_api.ts";

interface NotificationEntityPayload {
  type: "INSERT" | "UPDATE" | "DELETE";
  record: NotificationEntity;
  old_record?: NotificationEntity;
}

/**
 * This functions sends a notification to a user
 * It is triggered each time a new row is inserted in the notifications table
 */
Deno.serve(async (req) => {
  try {
    const payload: NotificationEntityPayload = await req.json();
    const supabase = createClient(
      Deno.env.get("SUPABASE_URL") ?? "",
      Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") ?? "",
    );
    const userNotificationsRepository = new NotificationRepository(supabase);
    const deviceRepository = new DeviceRepository(supabase);
    const fcmClient = new FcmClientApi(serviceAccount);
    const notification = Notification.fromEntity(
      payload.record,
      userNotificationsRepository,
      deviceRepository,
      fcmClient,
    );
    await notification.send();

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
    --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Functions"}'

*/
