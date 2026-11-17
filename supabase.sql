-- Atlas: tabla de datos privada por usuario (pegar en Supabase > SQL Editor > Run)
create table if not exists public.atlas_docs (
  user_id    uuid        not null default auth.uid() references auth.users(id) on delete cascade,
  key        text        not null,
  data       jsonb       not null,
  updated_at timestamptz not null default now(),
  primary key (user_id, key)
);

alter table public.atlas_docs enable row level security;

drop policy if exists "atlas: solo el dueño" on public.atlas_docs;
create policy "atlas: solo el dueño" on public.atlas_docs
  for all to authenticated
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

revoke all on public.atlas_docs from anon;
