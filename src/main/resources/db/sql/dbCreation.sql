--create the DB
set search_path to postgres_no_sql;

create table if not exists users_sql
(
  id         serial8 primary key,
  first_name varchar(30),
  last_name  varchar(50),
  email      varchar(50),
  address_id integer
);

create table if not exists users_doc
(
  id            serial8 primary key,
  user_document jsonb
);

create table if not exists address
(
  id            serial primary key,
  user_id       integer references users_sql (id),
  street_name   varchar(50),
  street_number varchar(7),
  city          integer,
  pos_code      varchar(10)
);