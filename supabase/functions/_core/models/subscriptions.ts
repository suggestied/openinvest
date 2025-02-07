import { SubscriptionEntity } from "../entities/subscription_entity.ts";
import { SubscriptionsRepository } from "../repositories/subscription_repository.ts";
import { UserRepository } from "../repositories/user_repository.ts";
import { RevenueCatEvent } from "./revenuecat_events.ts";
import { Stores, SubscriptionStatus } from "./subscription_status.ts";

export interface SubscriptionData {
    id?: string;
    userId: string;
    status: SubscriptionStatus;
    creationDate: Date;
    lastUpdate: Date;
    expirationDate?: Date;
    store: Stores;
    productId: string;
    offerId?: string;
  }


// deno-lint-ignore no-empty-interface
export interface Subscription extends SubscriptionData {}

export class Subscription {
  constructor(
    {
        id,
        userId,
        status,
        creationDate,
        lastUpdate,
        expirationDate,
        store,
        productId,
        offerId,
    }: SubscriptionData,
    private subscriptionRepository: SubscriptionsRepository,
  ) {
    this.id = id;
    this.userId = userId;
    this.status = status;
    this.creationDate = creationDate;
    this.lastUpdate = lastUpdate;
    this.expirationDate = expirationDate;
    this.store = store;
    this.productId = productId;
    this.offerId = offerId;
  }

  toEntity(): SubscriptionEntity {
    return <SubscriptionEntity>{
      id: this.id,
      user_id: this.userId,
      creation_date: this.creationDate,
      last_update_date: this.lastUpdate,
      period_end_date: this.expirationDate,
      status: this.status,
      store: this.store,
      sku_id: this.productId,
    };
  }

  static async fromRevenueCat({
    event,
    userRepository,
    subscriptionRepository,
  }: {
    event: RevenueCatEvent;
    userRepository: UserRepository;
    subscriptionRepository: SubscriptionsRepository;
  }): Promise<Subscription> {
    const user = await userRepository.getFromId(event.app_user_id);
    if (!user) {
      throw new Error(`User ${event.app_user_id} not found`);
    }
    const subscription = await subscriptionRepository.getFromUserId(event.app_user_id);
    const now = new Date();
    if (!subscription) {
        console.log("creating new subscription");
        return new Subscription({
            userId: event.app_user_id,
            status: event.subscriptionStatus,
            creationDate: now,
            lastUpdate: now,
            expirationDate: event.expirationDate,
            store: event.store == "APP_STORE"
                ? Stores.APPLE_STORE
                : Stores.PLAY_STORE,
            productId: event.product_id ?? event.new_product_id,
        }, subscriptionRepository);
    }
    console.log("updating subscription");
    return new Subscription({
        id: subscription.id,
        userId: event.app_user_id,
        status: event.subscriptionStatus,
        creationDate: subscription.creationDate,
        lastUpdate: now,
        expirationDate: event.expirationDate,
        store: event.store == "APP_STORE"
            ? Stores.APPLE_STORE
            : Stores.PLAY_STORE,
        productId: event.product_id,
      }, subscriptionRepository);
  }

  static fromEntity(
    entity: SubscriptionEntity,
    subscriptionRepository: SubscriptionsRepository,
  ): Subscription {
    return new Subscription({
      id: entity.id,
      userId: entity.user_id,
      status: entity.status,
      store: entity.store,
      creationDate: entity.creation_date,
      lastUpdate: entity.last_update_date,
      expirationDate: entity.period_end_date,
      productId: entity.sku_id,
    }, subscriptionRepository);
  }

  async save(): Promise<void> {
    await this.subscriptionRepository.save(this);
  }

  get active(): boolean {
    return this.status == SubscriptionStatus.ACTIVE;
  }
}
