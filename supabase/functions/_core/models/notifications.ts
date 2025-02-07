import { FcmClientApi, Message } from "../api/fcm_api.ts";
import { NotificationEntity } from "../entities/notification_entity.ts";
import { DeviceRepository } from "../repositories/device_repository.ts";
import { NotificationRepository } from "../repositories/notification_repository.ts";

export interface NotificationData {
  id?: string;
  userId: string;
  content: TextNotificationContent;
  creation_date: Date;
  read_date?: Date;
  data?: BaseNotificationData;
  //   notify_user: boolean;
}

export class BaseNotificationData {
  constructor(
    public type: NotificationTypes,
  ) {}
}

/// This is an example of a notification type
/// You can add more types here and create different notification data types for each
export enum NotificationTypes {
  REDIRECT_TO_PAGE = "REDIRECT_TO_PAGE",
  NEW_UPDATE = "NEW_UPDATE",
  NONE = "NONE",
}

///
export class TextNotificationContent {
  constructor(
    public title: string,
    public body: string,
  ) {}
}

// deno-lint-ignore no-empty-interface
export interface Notification extends NotificationData {}

export class Notification {
  constructor(
    {
      id,
      userId,
      content,
      creation_date,
      read_date,
      data,
    }: NotificationData,
    private notificationsRepository: NotificationRepository,
    private deviceRepository: DeviceRepository,
    private messaging: FcmClientApi,
  ) {
    this.id = id;
    this.userId = userId;
    this.content = content;
    this.data = data;
    // this.notify_user = notify_user;
    this.creation_date = creation_date;
    this.read_date = read_date;
  }

  toEntity(): NotificationEntity {
    // Note: we don't save the data in the database
    // Maybe you don't store those notifications and just send them directly
    // Maybe you want to save it in a different table ... I let you decide
    return <NotificationEntity> {
      id: this.id,
      user_id: this.userId,
      title: this.content.title,
      body: this.content.body,
      creation_date: this.creation_date,
      read_date: this.read_date,
      //   notify_user: this.notify_user,
    };
  }

  static fromEntity(
    entity: NotificationEntity,
    notificationsRepository: NotificationRepository,
    deviceRepository: DeviceRepository,
    messaging: FcmClientApi,
  ): Notification {
    return new Notification(
      {
        id: entity.id,
        userId: entity.user_id,
        creation_date: entity.creation_date,
        read_date: entity.read_date,
        content: new TextNotificationContent(
          entity.title,
          entity.body ?? "",
        ),
      },
      notificationsRepository,
      deviceRepository,
      messaging,
    );
  }

  async save(): Promise<void> {
    const res = await this.notificationsRepository.save(this);
    this.id = res;
  }

  async send(): Promise<void> {
    const devices = await this.deviceRepository.getFromUser(this.userId);
    for (const device of devices) {
      try {
        const content = this.content;
        const message: Message = {
          notification: { title: content.title, body: content.body },
          token: device.token,
          data: this.data != null
            ? this.cleanNotStringData({ ...this.data })
            : undefined,
        };
        await this.messaging.sendNotification(message);
      } catch (err) {
        if (err.error_code == "UNREGISTERED") {
          await device.delete();
        }
      }
    }
  }

  private cleanNotStringData(
    data: { [key: string]: string },
  ) {
    for (const key of Object.keys(data)) {
      if (typeof data[key] !== "string") {
        delete data[key];
      }
    }
    return data;
  }
}
