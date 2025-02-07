import { SupabaseClient } from "https://esm.sh/@supabase/supabase-js@2.32.0";
import { Subscription } from "../models/subscriptions.ts";
import { SubscriptionEntity } from "../entities/subscription_entity.ts";

export class SubscriptionsRepository {
  constructor(
    private client: SupabaseClient,
  ) {}

  private table() {
    return this.client.from("subscriptions");
  }

  async save(subscription: Subscription): Promise<void> {
    const entity = subscription.toEntity();
    if(subscription.id) {
        console.log("updating subscription");
        const { error } = await this.table()
            .update(entity)
            .eq("id", subscription.id);
        if (error) {
            console.error("error saving subscription", error);
            throw error;
        }
    } else {
        console.log("inserting subscription");
        const { error } = await this.table().insert(entity);
        if (error) {
            console.error("error saving subscription", error);
            throw error;
        }
    }
  }

  async getFromUserId(userId: string): Promise<Subscription | null> {
    const { data, error } = await this.table() //
      .select("*").eq("user_id", userId)
       .limit(1)
      .single();
    if (error) {
      console.log("No subscription for user found");
      return null;
    }
    if (!data) {
      return null;
    }
    const entity = <SubscriptionEntity>{...data};
    return Subscription.fromEntity(entity, this);
  }
}
