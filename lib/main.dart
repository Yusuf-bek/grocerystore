import 'package:flutter/material.dart';
import 'package:grocerystore/screens/registration/firstpage.dart';
import 'package:grocerystore/screens/welcome.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Store',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // home: Welcomepage(),
      home: Welcomepage(),
    );
  }
}


