export enum UserDeviceTypes {
  ANDROID = "ANDROID",
  IOS = "IOS",
  WEB = "WEB",
}

export interface DeviceEntity {
  id?: string;
  user_id: string;
  token: string;
  installation_id: string;
  operatingSystem: UserDeviceTypes;
  creation_date: Date;
  last_update_date: Date;
}
