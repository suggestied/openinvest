import { Stores, SubscriptionStatus } from "../models/subscription_status.ts";


export interface SubscriptionEntity {
    id?: string;
    user_id: string;
    creation_date: Date;
    last_update_date: Date;
    period_end_date?: Date;
    status: SubscriptionStatus; 
    store: Stores; 
    sku_id: string;
}