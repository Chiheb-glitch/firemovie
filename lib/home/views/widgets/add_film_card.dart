import 'package:film_wise_mobile/core/core.dart';
import 'package:film_wise_mobile/home/blocs/home_bloc.dart';
import 'package:film_wise_mobile/home/blocs/home_state.dart';
import 'package:film_wise_mobile/home/data/home_repo.dart';
import 'package:film_wise_mobile/home/views/pages/add_find_film.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class add_film_card extends StatelessWidget {
  final String come_from;


  add_film_card({required this.come_from,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){


                                                               
                                     Navigator.push(
                                       context,
                                       PageRouteBuilder(
                                         pageBuilder: (context, animation, secondaryAnimation) => RepositoryProvider<HomeRepo>(
                                                                                                        
                                                                                                      create: (context) => HomeRepo(),
                                                                                                      child: BlocProvider<HomeBLoc>(
                                                                                                        
                                                                                                        create:(context)=>HomeBLoc(context.read<HomeRepo>()) ,
                                                                                                        child: BlocListener<HomeBLoc,Top_5_moviesState>(
                                     listener: (context,state){  
}
                                     ,child: Find(param: "$come_from",)),)),
                                         transitionsBuilder:
                                             (context, animation, secondaryAnimation, child) {
                                           var begin = Offset(1.0, 0);
                                           var end = Offset.zero;
                                           var tween = Tween(begin: begin, end: end);
                                           var offsetAnimation = animation.drive(tween);
                                                               
                                           return SlideTransition(
                                             position: offsetAnimation,
                                             child: child,
                                           );
                                         },
                                       ),
                                     );
                                                               
                                                               
                                                               
                                                                                                        
      },
      child: Slidable(
         direction: Axis.vertical,
         
        child: Container(          height: come_from == "watched_list"? 400:(SizeConfig.screenWidth!! *134) /450,
            width: come_from == "watched_list" ? SizeConfig.screenWidth!! * 0.4 :  SizeConfig.screenWidth!! * 0.2,
                                                        margin: EdgeInsets.fromLTRB(
                                                            5, 0, 5, 4),
                                                        decoration: BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color.fromARGB(
                                                                  255,
                                                                  0,
                                                                  0,
                                                                  0), // Set the color of the box shadow
                                                              blurRadius:
                                                                  8, // Set the blur radius
                                                              // Set the spread radius
                                                              offset: Offset(0,
                                                                  2), // Set the offset
                                                            ),
                                                          ],
                                                          color: Color.fromRGBO(
                                                              30, 30, 30, 1),
                                                        ),
                                                        child:  Icon(
                                                                Icons
                                                                    .add_circle_outline_rounded,
                                                                color: Colors.blue,
                                                                size: 45,
                                                              ),
                                                      ),
      ),
    );
  }
}
