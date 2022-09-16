
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context){
  return MaterialApp(
    title: 'Lista de Filmes',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.white,
      textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.white),
      ),
    ),
    home: HomePage(),
  );
 }
}
