### Active Record Query Interface Assignment

### Provide one or more Active Record queries that retrieve the requested data
### below each of the following questions:


# 1a) Find the genre with the name "Hip Hop/Rap".
#<Genre id: 17, name: "Hip Hop/Rap", created_at: "2013-01-20 02:04:31", updated_at: "2014-01-29 22:14:08">


# 1b) Count how many tracks belong to the "Hip Hop/Rap" genre
rb(main):020:0> Genre.find_each do |x|
irb(main):021:1* count += 1
irb(main):022:1> puts count
irb(main):023:1> end
  Genre Load (0.8ms)  SELECT  "genres".* FROM "genres"  ORDER BY "genres"."id" ASC LIMIT 1000
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
=> nil
irb(main):024:0> count
=> 25


# 2) Find the total amount of time required to listen to all the tracks in the database.
irb(main):051:0> Track.find_each do |x|
irb(main):052:1* sum = sum + x.milliseconds
irb(main):053:1> end
sum


# 3a) Find the highest price of any track that has the media type "".
Track.order("unit_price DESC").where(media_type_id: 1).first


# 3b) Find the name of the most expensive track that has the media type "MPEG audio file".
Track.order("unit_price DESC").find_by(media_type_id:  1).name


# 4) Find the 2 oldest artists.
irb(main):101:0> my_arr = []
=> []
irb(main):102:0> Artist.find_each do |x|
irb(main):103:1* my_arr <<  x.created_at
irb(main):104:1> end
irb(main):106:0> my_arr.min



### Stretch Exercises (Active Record Query Interface)

### Some of these questions require the use of joins
### http://guides.rubyonrails.org/active_record_querying.html#joining-tables
### (see also http://www.w3schools.com/sql/sql_join.asp)


# 1) Find all the tracks that belong to the first playlist.



# 2) Write a series of queries to find all the tracks that belong to the 2 most recent playlists.



# 3) Find all the albums whose titles start with B.
