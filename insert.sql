alter table album 
drop column musician_name;
-- музыканты
insert into musician(musician_name)
values ('Kirkorov')

insert into musician(musician_name)
values ('MC Miladze')

insert into musician(musician_name)
values ('akopyan')

insert into musician(musician_name)
values ('kitty big')

insert into musician(musician_name)
values ('kitty small')

insert into musician(musician_name)
values ('mozart')

insert into musician(musician_name)
values ('Bach')

insert into musician(musician_name)
values ('vasya')

-- альбомы

insert into album(album_name, album_year)
values ('magic', 2018)

insert into album(album_name, album_year)
values ('raindow', 2019)

insert into album(album_name, album_year)
values ('future', 2020)

insert into album(album_name, album_year)
values ('catboy', 2021)

insert into album(album_name, album_year)
values ('joy', 2018)

insert into album(album_name, album_year)
values ('rob a bank', 2019)

insert into album(album_name, album_year)
values ('save a bank', 2020)

insert into album(album_name, album_year)
values ('cataclysm', 2021)

-- жанры

insert into music_genre (genre_name)
values ('pop')

insert into music_genre (genre_name)
values ('rock')

insert into music_genre (genre_name)
values ('classic')

insert into music_genre (genre_name)
values ('jazz')

insert into music_genre (genre_name)
values ('hip-hop')

-- трэк

insert into track (track_name, duration, album_id)
values ('snow', '00:02:15', 3)

insert into track (track_name, duration, album_id)
values ('summer', '00:03:04', 1)

insert into track (track_name, duration, album_id)
values ('makarena', '00:01:15', 5)

insert into track (track_name, duration, album_id)
values ('long island', '00:04:55', 1)

insert into track (track_name, duration, album_id)
values ('arpegio', '00:05:05', 2)

insert into track (track_name, duration, album_id)
values ('sotona my hell', '00:06:36', 4)

insert into track (track_name, duration, album_id)
values ('foot', '00:01:13', 6)

insert into track (track_name, duration, album_id)
values ('i want sleep', '00:05:00', 8)

insert into track (track_name, duration, album_id)
values ('my google', '00:06:26', 7)

insert into track (track_name, duration, album_id)
values ('rain', '00:03:33', 1)

insert into track (track_name, duration, album_id)
values ('sun', '00:01:01', 4)

insert into track (track_name, duration, album_id)
values ('my fail', '00:00:01', 5)

insert into track (track_name, duration, album_id)
values ('piano', '00:01:28', 2)

insert into track (track_name, duration, album_id)
values ('my flower', '00:04:05', 1)

insert into track (track_name, duration, album_id)
values ('end', '00:10:15', 6)

-- коллекции
insert into collection (collection_name, create_year)
values ('top 2020', 2020)

insert into collection (collection_name, create_year)
values ('koko', 2019)

insert into collection (collection_name, create_year)
values ('apple', 2021)

insert into collection (collection_name, create_year)
values ('black white', 2018)

insert into collection (collection_name, create_year)
values ('jabami', 2022)

insert into collection (collection_name, create_year)
values ('froggy leap', 2019)

insert into collection (collection_name, create_year)
values ('maybe fun', 2021)

insert into collection (collection_name, create_year)
values ('or not', 2022)

-- связи жанр и музыкант

insert into musician_genre_list  
values(1, 8)

insert into musician_genre_list 
values(2, 7)

insert into musician_genre_list 
values(3, 6)

insert into musician_genre_list 
values(4, 5)

insert into musician_genre_list 
values(5, 4)

insert into musician_genre_list 
values(2, 1)

insert into musician_genre_list 
values(5, 2)

insert into musician_genre_list 
values(3, 3)

insert into musician_genre_list 
values(1, 4)

--связь музыканты и альбом

insert into musician_album_list  
values(1, 1)

insert into musician_album_list  
values(2, 2)

insert into musician_album_list  
values(3, 3)

insert into musician_album_list  
values(4, 4)

insert into musician_album_list  
values(5, 5)

insert into musician_album_list  
values(6, 6)

insert into musician_album_list  
values(7, 7)

insert into musician_album_list  
values(8, 8)

--связь трэки коллекции

insert into track_collection_list  
values(1, 1)

insert into track_collection_list  
values(2, 2)

insert into track_collection_list  
values(15, 4)

insert into track_collection_list  
values(3, 5)

insert into track_collection_list  
values(6, 7)

insert into track_collection_list  
values(1, 6)

insert into track_collection_list  
values(10, 8)
--

