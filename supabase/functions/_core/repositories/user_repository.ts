import { SupabaseClient } from "https://esm.sh/@supabase/supabase-js@2.32.0";
import { User } from "../models/user.ts";
import { UserEntity } from "../entities/user_entity.ts";

export class UserRepository {
  constructor(
    private client: SupabaseClient,
  ) {}

  private table() {
    return this.client.from("users");
  }

  //   async create(user: User): Promise<User> {
  //   }

  async getFromId(userId: string): Promise<User | null> {
    const { data, error } = await this.table() //
      .select("*")
      .eq("id", userId)
      .limit(1)
      .single();
    if (error) {
      console.error(error);
      return null;
    }
    if (!data) {
      return null;
    }
    const entity = <UserEntity>{...data};
    return User.fromEntity(entity, this);
  }
}
