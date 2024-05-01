import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/core.dart';


class GeneretFilmcard extends StatefulWidget {
  final String imageUrl;
  final String id;
    final bool isloaded;


  const GeneretFilmcard({required this.imageUrl, required this.id,required this.isloaded});

  @override
  _GeneretFilmcard createState() => _GeneretFilmcard();
}

bool _isHovered = false;

class _GeneretFilmcard extends State<GeneretFilmcard> {

  @override
  Widget build(BuildContext context) {
    return widget.isloaded ? GestureDetector(
      onTap: () {
        /*
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                Find(arg: "${widget.id}"),
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
    */
      },
      child: MouseRegion(
        cursor: MouseCursor.uncontrolled,
        onHover: (_) {
       
        },
        onExit: (_) {
      
        },
        child: Container(
            margin: EdgeInsets.fromLTRB(5, 0, 10, 5),
            height: (SizeConfig.screenHeight!! * 110) / 384,
            width: (SizeConfig.screenWidth!! * 150) / 384,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(
                      255, 4, 34, 83), // Set the color of the box shadow
                  blurRadius: 8, // Set the blur radius
                  // Set the spread radius
                  offset: Offset(0, 2), // Set the offset
                ),
              ],
              image: DecorationImage(
                image: NetworkImage("${widget.imageUrl}"),
                fit: BoxFit.cover,
              ),
            )),
      ),
    ):
     SizedBox(
        
            child: Shimmer.fromColors(
              baseColor: Color.fromARGB(255, 30, 30, 30),
              highlightColor: const Color.fromARGB(255, 8, 79, 128),
              child: Container(
                margin: EdgeInsets.fromLTRB(5, 0, 10, 5),
            height: (SizeConfig.screenHeight!! * 80) / 384,
            width: (SizeConfig.screenWidth!! * 110) / 384,
                color: Colors.white,
              ),
            ),
          )
    
    
    ;
  }
}
