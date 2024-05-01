

class Top_5_Movies_Entity {
    String token;

    Top_5_Movies_Entity({
        required this.token,

    });

}


class Find_Movies_Entity {
    String title;

    Find_Movies_Entity({
        required this.title,

    });

}




class Add_List_Movies_Entity {
    String token;
    String movie_id;
    String come_from;

    Add_List_Movies_Entity({
              required this.token,

        required this.movie_id,
        required this.come_from,

    });

}

