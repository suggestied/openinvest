export interface NotificationEntity {
  id?: string;
  user_id: string;
  title: string;
  body?: string;
  creation_date: Date;
  read_date?: Date;
  //notify_user: boolean; // You can use this to create notifications that are not sent to the user
}
