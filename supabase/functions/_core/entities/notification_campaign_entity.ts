export interface NotificationCampaignEntity {
    id: string;
    title: string;
    body: string;
    scheduled_at: string;
    created_at: string;
    channel: string;
    extra_data?: { [key: string]: string };
    status: "scheduled" | "sent" | "failed";
}