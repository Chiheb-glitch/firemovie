import 'package:film_wise_mobile/account/blocs/login_bloc.dart';
import 'package:film_wise_mobile/account/blocs/login_event.dart';
import 'package:film_wise_mobile/account/blocs/login_state.dart';
import 'package:film_wise_mobile/account/data/login_repo.dart';
import 'package:film_wise_mobile/core/core.dart';
import 'package:film_wise_mobile/firebase_options.dart';
import 'package:film_wise_mobile/home/blocs/home_bloc.dart';
import 'package:film_wise_mobile/home/blocs/home_state.dart';
import 'package:film_wise_mobile/home/data/home_repo.dart';
import 'package:film_wise_mobile/home/views/pages/add_find_film.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'account/views/pages/login.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/views/pages/film_page.dart';
import 'home/views/pages/home.dart';
import 'home/views/widgets/custom_dialgo.dart';

void main()  async{
    WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter binding is initialized
   await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  

  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      theme:ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        background: Color.fromARGB(255, 30, 30, 30),
        primary: const Color.fromARGB(255, 246, 238, 227))),
      routes: {
        '/': (context) => RepositoryProvider<LoginRepo>(
          
        create: (context) => LoginRepo(),
        child: BlocProvider<LoginBLoc>(
          
          create:(context)=>LoginBLoc(context.read<LoginRepo>()) ,
          child: BlocListener<LoginBLoc,LoginState>(
            listener: (context,state){              
               if ( state is LoginLoadedState ){
               if((state.services.feature == "login")){
               if (state.services.message != "wrong"){
                Navigator.pushReplacementNamed(context, '/home');          
               }else {
                showDialog(
  context: context,
  builder: (BuildContext context) {
    return CustomDialog(message:"Wrong email or password",textColor:Colors.red,buttonText: "OK",);},
);

                
               }
               }else if (state.services.feature == "register"){
 
 if (state.services.status == 200){
  showDialog(
  context: context,
  builder: (BuildContext context) {
      return CustomDialog(message:"${state.services.message}",textColor:Color.fromARGB(255, 96, 255, 22),buttonText: "Login",); },
);
                Navigator.pushReplacementNamed(context, '/' ,arguments:{'come_from':'register'} );          

               }
       if (state.services.status == 400)
          showDialog(
  context: context,
  builder: (BuildContext context) {
    return CustomDialog(message:"${state.services.message}",textColor:Colors.red,buttonText: "OK",);
  },
  
);


      
               }


               
             }
            

            }
            ,child: Login()),)),
         '/home': (context) => RepositoryProvider<HomeRepo>(
          
        create: (context) => HomeRepo(),
        child: MultiBlocProvider(
  providers: [
    BlocProvider<HomeBLoc>(
      create: (context) => HomeBLoc(context.read<HomeRepo>()),
    ),
    BlocProvider<WatchedBLoc>(
      create: (context) => WatchedBLoc(context.read<HomeRepo>()),
      child: BlocListener<WatchedBLoc,Top_5_moviesState>(listener: (context, state) {
        print(state);
     if ( state is Delete_List_Movies_Done_State )
                   Navigator.pushReplacementNamed(context, '/home' ,arguments:{'param_load':'top_5_movies_delete','status':'${state.add_List_Movies_Model.status}','message':'${state.add_List_Movies_Model.message}'} );          
      },),
    ),
    BlocProvider<WatchtlistBLoc>(
      create: (context) => WatchtlistBLoc(context.read<HomeRepo>()),
    ), 
    BlocProvider<PopularlistBLoc>(
      create: (context) => PopularlistBLoc(context.read<HomeRepo>()),
    ), 
  ],
  child: BlocListener<HomeBLoc, Top_5_moviesState>(
    listener: (context, state) {
      // Your listener logic here
    },
    child: Dashboard(),
  ),
)),
             '/find': (context) => RepositoryProvider<HomeRepo>(
          
        create: (context) => HomeRepo(),
        child: BlocProvider<HomeBLoc>(
          
          create:(context)=>HomeBLoc(context.read<HomeRepo>()) ,
          child: BlocListener<HomeBLoc,Top_5_moviesState>(
            listener: (context,state){  
            
            



            }
            ,child: Find()),)),

              '/film_detail': (context) => RepositoryProvider<HomeRepo>(
          
        create: (context) => HomeRepo(),
        child: BlocProvider<HomeBLoc>(
          
          create:(context)=>HomeBLoc(context.read<HomeRepo>()) ,
          child: BlocListener<HomeBLoc,Top_5_moviesState>(
            listener: (context,state){  
            
            



            }
            ,child: Movie_Page(arg: "",)),))
      });
}
}