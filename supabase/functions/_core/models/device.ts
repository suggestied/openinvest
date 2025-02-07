import { DeviceEntity, UserDeviceTypes } from "../entities/device_entity.ts";
import { DeviceRepository } from "../repositories/device_repository.ts";

export interface DeviceData {
  id?: string;
  userId: string;
  token: string;
  installationId: string;
  operatingSystem: UserDeviceTypes;
  creation_date: Date;
  last_update_date: Date;
}

// deno-lint-ignore no-empty-interface
export interface Device extends DeviceData {}

export class Device {
  constructor(
    {
      id,
      userId,
      token,
      installationId,
      operatingSystem,
      creation_date,
      last_update_date,
    }: DeviceData,
    private deviceRepository: DeviceRepository,
  ) {
    this.id = id;
    this.userId = userId;
    this.token = token;
    this.installationId = installationId;
    this.operatingSystem = operatingSystem;
    this.creation_date = creation_date;
    this.last_update_date = last_update_date;
  }

  toEntity(): DeviceEntity {
    return <DeviceEntity> {
      id: this.id,
      user_id: this.userId,
      token: this.token,
      installation_id: this.installationId,
      operatingSystem: this.operatingSystem,
      creation_date: this.creation_date,
      last_update_date: this.last_update_date,
    };
  }

  static fromEntity(
    entity: DeviceEntity,
    deviceRepository: DeviceRepository,
  ): Device {
    return new Device({
      id: entity.id,
      userId: entity.user_id,
      token: entity.token,
      installationId: entity.installation_id,
      operatingSystem: entity.operatingSystem,
      creation_date: entity.creation_date,
      last_update_date: entity.last_update_date,
    }, deviceRepository);
  }

  async delete(): Promise<void> {
    if (!this.id) {
      throw new Error("Device has no id");
    }
    await this.deviceRepository.delete(this.id);
  }
}
