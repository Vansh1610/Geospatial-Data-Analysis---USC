{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab560
\pard\pardeftab560\slleading20\pardirnatural\partightenfactor0

\f0\fs26 \cf0 /* Create Table */\
create table lon_lat_table(\
loc_name varchar(15),\
coor geometry)\
\
\
/* Data Insertion */\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('leavy_f', ST_GeomFromText('POINT(-118.28277777777778 34.0213889)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('Carolyn_f', ST_GeomFromText('POINT(-118.28333333333333 34.0205556)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('Alumni_f', ST_GeomFromText('POINT(-118.28305555555555 34.0197222)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('Doheny_f', ST_GeomFromText('POINT(-118.28527777777778 34.0205556)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('traveller_f', ST_GeomFromText('POINT(-118.28527777777778 34.0202778)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('Viterbi_f', ST_GeomFromText('POINT(-118.28916666666666 34.0205556)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('Alumni_s', ST_GeomFromText('POINT(-118.28305555555555 34.0194444)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('traveller_s', ST_GeomFromText('POINT(-118.28527777777778 34.0202778)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('trojan_s', ST_GeomFromText('POINT(-118.28555555555555 34.0205556)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('tirebitter_s', ST_GeomFromText('POINT(-118.2863888888889 34.0188889)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('armstrong_s', ST_GeomFromText('POINT(-118.28861111111111 34.0202778)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('john_s', ST_GeomFromText('POINT(-118.28777777777778 34.0230556)'));\
\
INSERT INTO lon_lat_table (loc_name, coor)\
VALUES ('home', ST_GeomFromText('POINT(-118.2866822 34.0327725)'));\
\
\
/* Convex Hull Query */\
\
\pard\pardeftab560\slleading20\partightenfactor0
\cf0 SELECT ST_AsText(ST_ConvexHull(ST_Collect(coor))) FROM lon_lat_table;\
\
\
/* Nearest Neighbor Query */\
\
SELECT loc_name, ST_Astext(coor) as coor,ST_DISTANCE(coor,'POINT(-118.2866822 34.0327725)') as dist\
from lon_lat_table \
where loc_name <>'home'\
order by dist \
limit 4;}