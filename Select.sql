
select album_name, album_year from album
where album_year = 2018;

select track_name, duration from track
order by duration desc limit 1; 

select track_name, duration from track
where duration > '00:03:30'
order by duration; 

select collection_name, create_year from collection
where create_year between 2018 and 2020;

select musician_name from musician m 
where m.musician_name not like '% %'

select track_name from track
where track_name like '%my%' or track_name like '%my %' or track_name like '% my%'






