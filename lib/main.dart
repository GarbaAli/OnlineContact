import 'package:contact_online/constants.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page d\'accueil',
      theme: ThemeData(
       brightness: Brightness.dark,
       primaryColor: kPrimaryColor,
       scaffoldBackgroundColor : kBackgroundColor,

       textTheme: TextTheme(
         // ignore: deprecated_member_use
         display1: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),

         button: TextStyle( color: kPrimaryColor),

         // ignore: deprecated_member_use
         headline: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
       ), 
       inputDecorationTheme: InputDecorationTheme(
         enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(
             color: Colors.white.withOpacity(.2)
             ),
         ),
       ),
       
       
      ),
      home: Home(),
    );
  }
}
