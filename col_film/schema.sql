create table if not exists country (
  country_id serial not null primary key,
  country_name text not null,
);

create table if not exists production_country (
  movie_id serial primary key not null,
  country_id int not null references county(country_id) on delete cascade,
);

create table if not exists genre (
  genre_id serial not null primary key,
  genre_name text not null,
);

create table if not exists movie_genre (
  movie_id serial not null primary key,
  genre_id int not null references genre(genre_id) on delete cascade,
);


create table if not exists keyword (
  keyword_id serial not null primary key,
  keyword_name text not null,
);

create table if not exists movie_keyword (
  movie_id serial not null primary key,
  keyword_id int not null references keyword(keyword_id) on delete cascade,
);

create table if not exists school (
  school_id serial not null primary key,
  school_name text not null,
);

create table if not exists movie_genre (
  movie_id serial not null primary key,
  school_id int not null references school(school_id) on delete cascade,
);

create table if not exists gender (
  gender_id serial not null primary key,
  genre_name text not null,
);

create table if not exists movie_cast (
  movie_id serial not null primary key,
  genre_id int not null references gender(gender_id) on delete cascade,
  character_name text not null
);


create table if not exists person (
  person_id serial not null primary key,
  person_name_name text not null,
);

create table if not exists department (
  department_id serial not null primary key,
  department_name text not null,
);


create table if not exists movie_crew (
  person_id serial not null primary key,
  movie_id int not null references gender(gender_id) on delete cascade,
  department_id text not null
);




create table if not exists movies (
  movie_id serial not null primary key,
  title text not null,
  homepage text not null,
  overview text not null,
  poularity text not null,
  release_date timestamp not null,
);
