

class Top_5_Movies_Model {
    String movies_id;
    String image_link;
    String title;

    Top_5_Movies_Model({
        required this.movies_id,
        required this.image_link,
        required this.title,


    });

}



class Find_Movies_Model_ {
    String movies_id;
        String title;

    String image_link;
    String year;
    String directed_by;

    Find_Movies_Model_({
required this.movies_id,
required this.title,

required this.image_link,
required this.year,
required this.directed_by,
    });

}


class Add_List_Movies_Model {
    String message;
    String status;

    Add_List_Movies_Model({
        required this.message,
        required this.status,

    });

}


class Watched_List_Movies_Model {
    String movies_id;
    String image_link;
    String title;
    String count;

    Watched_List_Movies_Model({
        required this.movies_id,
        required this.image_link,
                required this.title,
            required this.count
    });

}



class Detail_MoviesModel {
  String moviesId;
  String title;
  String imageLink;
  String year;
  String directedBy;
  String descritption;
  List<dynamic> genres;
  dynamic rating;
    dynamic  ratingCount;
  Detail_MoviesModel({
    required this.moviesId,
    required this.title,
    required this.imageLink,
    required this.year,

    required this.directedBy,
    required this.descritption,
    required this.genres,
    required this.rating,
    required this.ratingCount,

  });
}

class Review_Model {
  String image_link;
  String writer_name;
  String rating;
  String data;
    String body;

  dynamic likes;
  dynamic Disliles;
  
  Review_Model({
       required this.image_link,

    required this.writer_name,
    required this.rating,
    required this.data,
    required this.likes,    
        required this.body,    

    required this.Disliles,    

  });
}


class Review_MoviesModel {
  String count;
    String moyen;

  List<Review_Model> reviews;
  
  Review_MoviesModel({
   
    required this.count,
    required this.moyen,

    required this.reviews,
    

  });
}



class Movie_streamModel {
  String image_url_platform;
    String movie_url;
    

  
  Movie_streamModel({
   
    required this.image_url_platform,
    required this.movie_url,

    

  });
}



class Stream_AvaibilityModel {
  List<Movie_streamModel> movies_stream;
    String trailer_url;
    

  
  Stream_AvaibilityModel({
   
    required this.movies_stream,
    required this.trailer_url,

    

  });
}

