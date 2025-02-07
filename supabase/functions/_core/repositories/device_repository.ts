import { SupabaseClient } from "https://esm.sh/@supabase/supabase-js@2.32.0";
import { Device } from "../models/device.ts";

export class DeviceRepository {
  constructor(
    private client: SupabaseClient,
  ) {}

  private table() {
    return this.client.from("devices");
  }

  async getFromUser(userId: string): Promise<Device[]> {
    const { data, error } = await this.table() //
      .select()
      .eq("user_id", userId);
    if (error) {
      throw error;
    }
    if (!data) {
      throw new Error("no data");
    }
    return data.map((d) => Device.fromEntity(d, this));
  }

  async delete(id: string) {
    const { error } = await this.table().delete().eq("id", id);
    if (error) {
      throw error;
    }
  }
}
