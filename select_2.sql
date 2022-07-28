-- продвинутая выборка
-- 1 задание
select count(genre_id) as quantity, genre_name from musician_genre_list mgl 
join  music_genre mg on mgl.genre_id = mg.id 
group by mg.genre_name; 

--2 задание
select album_year, count(track_name) as quantity from album a 
join track t on a.id = t.album_id 
where a.album_year >= 2019 and a.album_year <= 2020
group by a.album_year 

-- 3 задание
select album_name, avg(duration) from album a 
join track t on a.id = t.album_id 
group by album_name 

--4 Задание
select musician_name, album_id, album_year from album a
join musician_album_list mal on a.id = mal.album_id 
join musician m on mal.musician_id = m.id 
where album_year != 2020

--5 задание
select collection_name from collection c 
join track_collection_list tcl on c.id = tcl.collection_id 
join track t on tcl.track_id = t.id 
join album a on t.album_id = a.id 
join musician_album_list mal on a.id = mal.album_id 
join musician m on mal.musician_id = m.id
where m.musician_name like 'akopyan';

--6 задание
select album_name from album a 
join musician_album_list mal on a.id = mal.album_id 
join musician m on mal.musician_id = m.id 
join musician_genre_list mgl on m.id = mgl.musician_id 
join music_genre mg on mgl.genre_id = mg.id 
group by a.album_name 
having count(mg.id) > 1;

--7 задание
select track_name from track t 
left join track_collection_list tcl on t.id = tcl.track_id 
where tcl.track_id is null

--8 задание
select m.musician_name, t.duration from musician m 
join musician_album_list mal on m.id = mal.musician_id 
join album a on mal.album_id = a.id 
join track t on a.id = t.album_id 
where t.duration in (select min(duration) from track)

--9 задание
select a.album_name, count(t.id) as quantity_track from album a 
join track t on a.id = t.album_id 
group by album_name 
order by quantity_track