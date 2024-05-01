

import 'package:equatable/equatable.dart';
import 'package:film_wise_mobile/home/data/top_5_movies_entity.dart';

import '../data/top_5_movies_entity.dart';
import '../data/top_5_movies_entity.dart';
import '../data/top_5_movies_model.dart';


abstract class Top_5_moviesState extends Equatable{}


class Top_5_moviesLoadingState extends Top_5_moviesState{

  @override
  List<Object?> get props=>[];
}


class Top_5_moviesCalmState extends Top_5_moviesState{

  @override
  List<Object?> get props=>[];
}






class Top_5_moviesTrigerState extends Top_5_moviesState{
Top_5_Movies_Entity top_5_Movies_Entity;

  Top_5_moviesTrigerState({required this.top_5_Movies_Entity});
  @override
  List<Object?> get props=>[];
}

class Watched_list_moviesTrigerState extends Top_5_moviesState{
Top_5_Movies_Entity top_5_Movies_Entity;

  Watched_list_moviesTrigerState({required this.top_5_Movies_Entity});
  @override
  List<Object?> get props=>[];
}

class detail_moviesTrigerState extends Top_5_moviesState{
String id_movie;

  detail_moviesTrigerState({required this.id_movie});
  @override
  List<Object?> get props=>[];
}



class Watch_list_moviesTrigerState extends Top_5_moviesState{
Top_5_Movies_Entity top_5_Movies_Entity;

  Watch_list_moviesTrigerState({required this.top_5_Movies_Entity});
  @override
  List<Object?> get props=>[];
}


class Detail_moviesLoadedState extends Top_5_moviesState{
  Detail_MoviesModel movie_data;
    Detail_moviesLoadedState({required this.movie_data});

  @override
  List<Object?> get props=>[];
}


class Top_5_moviesLoadedState extends Top_5_moviesState{
  List<Top_5_Movies_Model> top_5_movies_retrun=[];
    Top_5_moviesLoadedState({required this.top_5_movies_retrun});

  @override
  List<Object?> get props=>[];
}


class Find_MoviesTrigerState extends Top_5_moviesState{
Find_Movies_Entity find_Movies_Entity;

  Find_MoviesTrigerState({required this.find_Movies_Entity});
  @override
  List<Object?> get props=>[];
}
class Find_MoviesLoadingState extends Top_5_moviesState{

  @override
  List<Object?> get props=>[];
}


class Find_MoviesLoadedState extends Top_5_moviesState{
  List<Find_Movies_Model_> find_movies_retrun=[];
    Find_MoviesLoadedState({required this.find_movies_retrun});

  @override
  List<Object?> get props=>[];
}





class Add_List_MoviesTrigerState extends Top_5_moviesState{
Add_List_Movies_Entity add_List_Movies_Entity;
  Add_List_MoviesTrigerState({required this.add_List_Movies_Entity});
  @override
  List<Object?> get props=>[];
}


class Add_List_Movies_Done_State extends Top_5_moviesState{
Add_List_Movies_Model add_List_Movies_Model;
  Add_List_Movies_Done_State({required this.add_List_Movies_Model});
  @override
  List<Object?> get props=>[];
}


class Delete_List_MoviesTrigerState extends Top_5_moviesState{
Add_List_Movies_Entity add_List_Movies_Entity;
  Delete_List_MoviesTrigerState({required this.add_List_Movies_Entity});
  @override
  List<Object?> get props=>[];
}

class Review_MoviesTrigerState extends Top_5_moviesState{
String imdbid;
String token;
  Review_MoviesTrigerState({required this.imdbid,required this.token});
  @override
  List<Object?> get props=>[];
}



class Delete_List_Movies_Done_State extends Top_5_moviesState{
Add_List_Movies_Model add_List_Movies_Model;
  Delete_List_Movies_Done_State({required this.add_List_Movies_Model});
  @override
  List<Object?> get props=>[];
}



class Watched_List_moviesLoadedState extends Top_5_moviesState{
  List<Watched_List_Movies_Model> Watched_List_movies_retrun=[];
    Watched_List_moviesLoadedState({required this.Watched_List_movies_retrun});

  @override
  List<Object?> get props=>[];
}



class Movie_Rating_moviesLoadedState extends Top_5_moviesState{
 Review_MoviesModel movies_rating;
    Movie_Rating_moviesLoadedState({required this.movies_rating});

  @override
  List<Object?> get props=>[];
}


class Stream_MoviesTrigerState extends Top_5_moviesState{
String imdbid;
  Stream_MoviesTrigerState({required this.imdbid});
  @override
  List<Object?> get props=>[];
}



class Stream_MoviesLoadedState extends Top_5_moviesState{
 Stream_AvaibilityModel Streaming;
    Stream_MoviesLoadedState({required this.Streaming});

  @override
  List<Object?> get props=>[];
}