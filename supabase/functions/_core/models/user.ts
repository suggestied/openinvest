import { UserEntity } from "../entities/user_entity.ts";
import { UserRepository } from "../repositories/user_repository.ts";

export interface UserData {
  id?: string;
  name?: string;
  email?: string;
  creation_date: Date;
  last_update_date: Date;
}

// deno-lint-ignore no-empty-interface
export interface User extends UserData {}

export class User {
  constructor(
    {
      id,
      name,
      email,
      creation_date,
      last_update_date,
    }: UserData,
    private userRepository: UserRepository,
  ) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.creation_date = creation_date;
    this.last_update_date = last_update_date;
  }

  static fromEntity(entity: UserEntity, userRepository: UserRepository): User {
    return new User({
      id: entity.id,
      name: entity.name,
      email: entity.email,
      creation_date: entity.creation_date,
      last_update_date: entity.last_update_date,
    }, userRepository);
  }

  toEntity(): UserEntity {
    return {
      id: this.id,
      name: this.name,
      email: this.email,
      creation_date: this.creation_date,
      last_update_date: this.last_update_date,
    };
  }
}
