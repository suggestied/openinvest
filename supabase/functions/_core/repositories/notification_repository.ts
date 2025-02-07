import { SupabaseClient } from "https://esm.sh/@supabase/supabase-js@2.32.0";
import { Notification } from "../models/notifications.ts";

export class NotificationRepository {
  constructor(
    private client: SupabaseClient,
  ) {}

  private table() {
    return this.client.from("notifications");
  }

  async save(notification: Notification): Promise<string> {
    const { data, error } = await this.table() //
      .upsert(notification.toEntity())
      .select();
    if (error) {
      throw error;
    }
    if (!data) {
      throw new Error("no data");
    }
    const entity = data[0];
    return entity.id;
  }
}
