import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sportson/view/sportson/Home.dart';
import 'package:sportson/view/sportson/Welcome.dart';

import 'TeamHomePage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,     
      ),
     home: Welcome(),
    );
  }
}