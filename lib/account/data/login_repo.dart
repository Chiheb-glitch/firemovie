

import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart';

import 'auth_entity.dart';
import 'login_model.dart';



class   LoginRepo {

  final url ="http://127.0.0.1:8000/api/account/login";
  final url_login ="http://127.0.0.1:8000/api/account/register";
  

     Future<Login> getToken(LoginEntity loginEntity
)async{


try {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: loginEntity.email,
      password: loginEntity.passowrd,
    );
    print('User signed in: ${userCredential.user!.uid}');
        return Login(message: "loged in",feature:"login",status: 200);

  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  } catch (e) {
    print(e.toString());
  }
  
    final response =  await post(Uri.parse(url),body: {'email':'${loginEntity.email}','password':'${loginEntity.passowrd}'});
    final services=jsonDecode(response.body)["message"];
    print(services);


  
    return Login(message: services,feature:jsonDecode(response.body)["feature"],status: jsonDecode(response.body)["status"]);

 
  }


    Future<Login> Registerrepo(RegisterEntity registerEntity
)async{


    final FirebaseAuth _auth = FirebaseAuth.instance;
          final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(

             email: registerEntity.email,
        password: registerEntity.passowrd,
          );
           if (userCredential.user != null) {
        print('Registration successful!${userCredential.user}');
    
var db = FirebaseFirestore.instance;
final Accounts = db.collection("Accounts");
Accounts.doc("${registerEntity.email}").set({
  "belance":5,
   "choise_1":5,
   "choise_1":5,
   "choise_1":5,
   "username":"${registerEntity.username}"
  });
      return Login(message: "Account created",feature:"register",status: 200);

  }

    final response =  await post(Uri.parse(url_login),body: {
      'username':'${registerEntity.email}',
      'email':'${registerEntity.email}',
      'password':'${registerEntity.passowrd}'});
    final services=jsonDecode(response.body)["message"];
    print(services);


  
    return Login(message: services,feature:jsonDecode(response.body)["feature"],status: jsonDecode(response.body)["status"]);

  }
}