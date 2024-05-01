




import 'package:film_wise_mobile/account/data/auth_entity.dart';
import 'package:film_wise_mobile/home/views/widgets/add_film_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/home_repo.dart';
import '../data/top_5_movies_model.dart';
import 'home_event.dart';
import 'home_state.dart';


class HomeBLoc extends Bloc<LoadHomeEvent,Top_5_moviesState>{
 final HomeRepo  repo;
  HomeBLoc(this.repo) : super(Top_5_moviesCalmState());





  @override
 Future<List<Top_5_Movies_Model>> load_top_5_movies(Top_5_moviesTrigerState event)   async {

    print("loadeddd top 5 movies");
            emit(Top_5_moviesLoadingState());

    final registerEntity =  await repo.get_top_5_movies(event.top_5_Movies_Entity);
        emit(Top_5_moviesLoadedState(top_5_movies_retrun:registerEntity ));

     
    
  return registerEntity;



 }






  @override
 Future<List<Find_Movies_Model_>> find_movies_movies(Find_MoviesTrigerState event)   async {

    print("find movies here");
           emit(Find_MoviesLoadingState());
           print("tttt");

    final registerEntity =  await repo.get_find_movies(event.find_Movies_Entity);

emit(Find_MoviesLoadedState(find_movies_retrun: registerEntity));
    
  return registerEntity;



 }




  @override
 Future<Add_List_Movies_Model> Add_List_movies_movies(Add_List_MoviesTrigerState event)   async {

    print("add movies here");


  
    final Add_List_Movies =  await repo.add_list_find_movies(event.add_List_Movies_Entity);
  
  
    print("${Add_List_Movies.message}");

          emit(Add_List_Movies_Done_State(add_List_Movies_Model: Add_List_Movies));
  return Add_List_Movies;



 }





  @override
 Future<Add_List_Movies_Model> Delete_List_movies_movies(Delete_List_MoviesTrigerState event)   async {

    print("Delete movies here");

    final Add_List_Movies =  await repo.delete_list_find_movies(event.add_List_Movies_Entity);
    print("${Add_List_Movies.message}");
    
             

          emit(Delete_List_Movies_Done_State(add_List_Movies_Model: Add_List_Movies));
  return Add_List_Movies;



 }


  @override
 Future<List<Watched_List_Movies_Model>> watched_list_movies(Watched_list_moviesTrigerState event)   async {

    print("loadeddd top 5 movies");

    final registerEntity =  await repo.get_whatched_list_movies(event.top_5_Movies_Entity);
       emit(Watched_List_moviesLoadedState(Watched_List_movies_retrun:registerEntity ));

     
    
  return registerEntity;



 }


  @override
 Future<Detail_MoviesModel> movie_detail_movies(detail_moviesTrigerState event)   async {

    print("loadeddd top 5 movies");

    final Film_model =  await repo.loadPageData(event.id_movie);

     emit(Detail_moviesLoadedState(movie_data: Film_model));

     
    
  return Film_model;



 }


 





}



class WatchedBLoc extends Bloc<LoadHomeEvent,Top_5_moviesState>{
 final HomeRepo  repo;
  WatchedBLoc(this.repo) : super(Top_5_moviesCalmState());



  @override
 Future<Add_List_Movies_Model> Delete_List_movies_movies(Delete_List_MoviesTrigerState event)   async {

    print("Delete movies here");

    final Add_List_Movies =  await repo.delete_list_find_movies(event.add_List_Movies_Entity);
    print("${Add_List_Movies.message}");
    
             

          emit(Delete_List_Movies_Done_State(add_List_Movies_Model: Add_List_Movies));
  return Add_List_Movies;



 }



  @override
 Future<List<Watched_List_Movies_Model>> watched_list_movies(Watched_list_moviesTrigerState event)   async {

    print("loadeddd top 5 movies");

    final registerEntity =  await repo.get_whatched_list_movies(event.top_5_Movies_Entity);
       emit(Watched_List_moviesLoadedState(Watched_List_movies_retrun:registerEntity ));

     
    
  return registerEntity;



 }




}




class WatchtlistBLoc extends Bloc<LoadHomeEvent,Top_5_moviesState>{
 final HomeRepo  repo;
  WatchtlistBLoc(this.repo) : super(Top_5_moviesCalmState());


  @override
 Future<Add_List_Movies_Model> Delete_List_movies_movies(Delete_List_MoviesTrigerState event)   async {

    print("Delete movies here");

    final Add_List_Movies =  await repo.delete_list_find_movies(event.add_List_Movies_Entity);
    print("${Add_List_Movies.message}");
    
             

          emit(Delete_List_Movies_Done_State(add_List_Movies_Model: Add_List_Movies));
  return Add_List_Movies;



 }





  @override
 Future<List<Watched_List_Movies_Model>> watch_list_movies(Watched_list_moviesTrigerState event)   async {

    print("loadeddd watch movies");

    final registerEntity =  await repo.get_watch_list_movies(event.top_5_Movies_Entity);
       emit(Watched_List_moviesLoadedState(Watched_List_movies_retrun:registerEntity ));

     
    
  return registerEntity;



 }




}





class PopularlistBLoc extends Bloc<LoadHomeEvent,Top_5_moviesState>{
 final HomeRepo  repo;
  PopularlistBLoc(this.repo) : super(Top_5_moviesCalmState());







  @override
 Future<List<Watched_List_Movies_Model>> get_popular_list_list_movies(Watched_list_moviesTrigerState event)   async {

    print("loadeddd watch movies");

    final registerEntity =  await repo.get_popular_list_watch_list_movies(event.top_5_Movies_Entity);
       emit(Watched_List_moviesLoadedState(Watched_List_movies_retrun:registerEntity ));

     
    
  return registerEntity;



 }




}




class ReviewBLoc extends Bloc<LoadHomeEvent,Top_5_moviesState>{
 final HomeRepo  repo;
  ReviewBLoc(this.repo) : super(Top_5_moviesCalmState());



  @override
 Future<Review_MoviesModel> Get_Review_movies_movies(Review_MoviesTrigerState event)   async {

    print("Delete movies here");

    final Add_List_Movies =  await repo.get_review_movies(event);
       
    
           emit(Movie_Rating_moviesLoadedState(movies_rating: Add_List_Movies) );

             

         // emit(Delete_List_Movies_Done_State(add_List_Movies_Model: Add_List_Movies));
  return Add_List_Movies;



 }}





 class StreamBLoc extends Bloc<LoadHomeEvent,Top_5_moviesState>{
 final HomeRepo  repo;
  StreamBLoc(this.repo) : super(Top_5_moviesCalmState());



  @override
 Future<Stream_AvaibilityModel> Get_Stream_movies(Stream_MoviesTrigerState event)   async {

    print("Delete movies here");

    final Add_List_Movies =  await repo.get_Steam_avaibility(event);
       
    
         emit(Stream_MoviesLoadedState(Streaming: Add_List_Movies) );

             

         // emit(Delete_List_Movies_Done_State(add_List_Movies_Model: Add_List_Movies));
  return Add_List_Movies;



 }}