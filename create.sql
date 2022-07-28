create table if not exists music_genre (
id SERIAL primary key,
genre_name varchar(30) not null
);

create table if not exists musician (
id SERIAL primary key,
musician_name varchar(30) not null,
album_list varchar(30)
);

create table if not exists musician_genre_list (
genre_id integer references music_genre(id),
musician_id integer references musician(id),
constraint pk primary key (genre_id, musician_id)
);

create table if not exists album (
id SERIAL primary key,
album_name varchar(30) not null,
album_year integer not null,
musician_name text 
);

create table if not exists musician_album_list (
album_id integer references album(id),
musician_id integer references musician(id),
constraint ma primary key(album_id, musician_id)
);

create table if not exists track (
id SERIAL primary key,
track_name varchar(30) not null,
duration time not null,
album_id integer not null references album(id)
);

create table if not exists collection (
id SERIAL primary key,
collection_name varchar(30) not null,
create_year integer not null
);

create table if not exists track_collection_list(
track_id integer references track(id),
collection_id integer references collection(id),
constraint tc primary key(track_id, collection_id)
);