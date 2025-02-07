create table
  public.devices (
    id uuid not null default gen_random_uuid (),
    user_id uuid not null,
    creation_date timestamp with time zone not null,
    last_update_date timestamp with time zone not null,
    installation_id text not null,
    token text not null,
    "operatingSystem" text not null,
    constraint devices_pkey primary key (id),
    constraint devices_user_id_fkey foreign key (user_id) references auth.users (id) on update cascade on delete cascade
  ) tablespace pg_default;


alter table public.devices
  enable row level security;

create policy "Enable select access for users based on their user ID *"
on public.devices
for select using (auth.uid() = user_id);

create policy "Enable insert access for users based on their user ID *"
on public.devices
for insert with check (auth.uid() = user_id);

create policy "Enable update access for users based on their user ID *"
on public.devices
for update using (auth.uid() = user_id) with check (auth.uid() = user_id);

create policy "Enable delete access for users based on their user ID *"
on public.devices
for delete using (auth.uid() = user_id);

create table
  public.notifications (
    id uuid not null default gen_random_uuid (),
    user_id uuid not null,
    title text not null,
    body text not null,
    data jsonb null,
    type text null,
    creation_date timestamp with time zone not null,
    read_date timestamp with time zone null,
    constraint notifications_pkey primary key (id),
    constraint notifications_user_id_fkey foreign key (user_id) references auth.users (id) on update cascade on delete cascade
  ) tablespace pg_default;

alter table public.notifications
  enable row level security;

create policy "Enable read based on user_id." on public.notifications
  for select using (auth.uid() = user_id);

create policy "Enable update based on user_id." on public.notifications
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);

create type store_type as enum (
  'PLAY_STORE',
  'APPLE_STORE'
);

create type sub_status as enum (
  'ACTIVE',
  'PAUSED',
  'EXPIRED',
  'LIFETIME'
);

create table
  public.subscriptions (
    id uuid not null default gen_random_uuid (),
    creation_date timestamp with time zone not null default now(),
    sku_id text not null,
    last_update_date timestamp with time zone not null,
    period_end_date timestamp with time zone null,
    user_id uuid null,
    store store_type null,
    status sub_status not null,
    constraint subscriptions_pkey primary key (id),
    constraint subscriptions_user_id_fkey foreign key (user_id) references auth.users (id) on update cascade on delete cascade
  ) tablespace pg_default;

alter table public.subscriptions
  enable row level security;

create policy "Enable read based on user_id." on public.subscriptions
  for select using (auth.uid() = user_id);

create table
  public.users (
    id uuid not null default gen_random_uuid (),
    creation_date timestamp with time zone not null default now(),
    last_update_date timestamp without time zone null,
    name character varying null,
    email character varying null,
    avatar_url text null,
    onboarded boolean not null default false,
    constraint users_pkey primary key (id),
    constraint users_id_key unique (id)
  ) tablespace pg_default;

alter table users enable row level security;

create policy "Users are viewable by everyone." on public.users
  for select using (true);

create policy "Users can insert their own profile." on public.users
  for insert with check (auth.uid() = id);

create policy "Users can update own profile." on public.users
  for update using (auth.uid() = id) with check (auth.uid() = id);

-- ================================================
-- user infos table
-- ================================================
create table
  public.user_infos (
    id uuid PRIMARY KEY default gen_random_uuid (),
    user_id uuid NOT NULL,  
    info_key TEXT NOT NULL,
    info_value TEXT NOT NULL,
    constraint user_infos_id_fkey foreign key (user_id) references auth.users (id) on update cascade on delete cascade
  ) tablespace pg_default;

alter table user_infos enable row level security;

create policy "Users can insert" on public.user_infos
  for insert with check (auth.uid() = user_id);

create policy "Users can update" on public.user_infos
    for update using (auth.uid() = user_id);

create policy "Users can delete" on public.user_infos
    for delete using (auth.uid() = user_id);

create policy "Users can select" on public.user_infos
    for select using (auth.uid() = user_id);


-- This trigger automatically creates a profile entry when a new user signs up via Supabase Auth.
-- See https://supabase.com/docs/guides/auth/managing-user-data#using-triggers for more details.
create function public.handle_new_user()
returns trigger as $$
begin
  insert into public.users (id, name, avatar_url, email)
  values (new.id, new.raw_user_meta_data->>'name', new.raw_user_meta_data->>'avatar_url', new.raw_user_meta_data->>'email');
  return new;
end;
$$ language plpgsql security definer;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- Set up Storage for avatars
insert into storage.buckets (id, name)
  values ('avatars', 'avatars');

-- Set up access controls for storage.
-- See https://supabase.com/docs/guides/storage#policy-examples for more details.


alter table storage.objects enable row level security;

create policy "Avatar images are publicly accessible." on storage.objects
  for select using (bucket_id = 'avatars');

create policy "Allow authenticated users to upload an avatar." on storage.objects
  for insert to authenticated with check (bucket_id = 'avatars');

create policy "Allow authenticated users to update their own files"on storage.objects
  for update to authenticated using (bucket_id = 'avatars') with check ( auth.uid()::text = owner_id);

create policy "Allow authenticated users to delete their own files" on storage.objects
  for delete to authenticated using ( bucket_id = 'avatars' AND auth.uid()::text = owner_id );