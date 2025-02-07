import { SupabaseClient } from "https://esm.sh/@supabase/supabase-js@2.32.0";

export class NotificationCampaignRepository {
  constructor(
    private client: SupabaseClient,
  ) {}

  private table() {
    return this.client.from("notification_campaigns");
  }

  async getScheduled() {
    const { data, error } = await this.table()
      .select()
      .eq("status", "scheduled")
      .lte("scheduled_at", new Date().toISOString());
    if (error) {
      throw error;
    }
    if (!data) {
      throw new Error("no data");
    }
    return data;
  }

  async updateStatus(id: string, status: "sent" | "failed") {
    const { error } = await this.table()
      .update({ status })
      .eq("id", id);
    if (error) {
      throw error;
    }
  }
}
