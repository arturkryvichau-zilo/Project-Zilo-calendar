-- ════════════════════════════════════════════════════════════════
-- Zilo Calendar — Supabase schema
-- Run this in: Supabase Dashboard → SQL Editor → New query
-- ════════════════════════════════════════════════════════════════

-- ── Extensions ───────────────────────────────────────────────────
create extension if not exists "uuid-ossp";

-- ── Clients ──────────────────────────────────────────────────────
create table if not exists clients (
  id         uuid primary key default uuid_generate_v4(),
  name       text not null,
  phone      text,
  email      text,
  created_at timestamptz not null default now()
);

-- Full-text search index on clients
create index if not exists clients_search_idx
  on clients using gin(
    to_tsvector('simple', coalesce(name,'') || ' ' || coalesce(phone,'') || ' ' || coalesce(email,''))
  );

-- ── Vehicles ─────────────────────────────────────────────────────
create table if not exists vehicles (
  id         uuid primary key default uuid_generate_v4(),
  client_id  uuid not null references clients(id) on delete cascade,
  make       text,
  model      text,
  plate      text,
  vin        text,
  created_at timestamptz not null default now()
);

create index if not exists vehicles_client_idx on vehicles(client_id);

-- ── Visit status enum ─────────────────────────────────────────────
do $$ begin
  create type visit_status as enum ('scheduled', 'in_progress', 'done', 'cancelled');
exception
  when duplicate_object then null;
end $$;

-- ── Visits ────────────────────────────────────────────────────────
create table if not exists visits (
  id             uuid primary key default uuid_generate_v4(),
  vehicle_id     uuid not null references vehicles(id) on delete cascade,
  date           date not null,
  time_from      time,
  time_to        time,
  description    text,
  notes          text,
  send_reminder  boolean not null default false,
  status         visit_status not null default 'scheduled',
  created_at     timestamptz not null default now()
);

create index if not exists visits_date_idx       on visits(date);
create index if not exists visits_vehicle_idx    on visits(vehicle_id);

-- ════════════════════════════════════════════════════════════════
-- Row Level Security (RLS)
-- Allows all operations for authenticated users only.
-- Adjust policies to your auth model as needed.
-- ════════════════════════════════════════════════════════════════

alter table clients  enable row level security;
alter table vehicles enable row level security;
alter table visits   enable row level security;

-- During development you can use permissive policies:
create policy "allow_all_clients"  on clients  for all using (true) with check (true);
create policy "allow_all_vehicles" on vehicles for all using (true) with check (true);
create policy "allow_all_visits"   on visits   for all using (true) with check (true);
