import 'package:flutter/material.dart';
import 'package:wedding_planner/Menu.dart';
import 'package:wedding_planner/debut.dart';
import 'package:wedding_planner/login.dart';
import 'package:wedding_planner/model.dart';
import 'package:wedding_planner/step.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // static String title;

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(primaryColor: Colors.amber),
      home: Acceuil(),
    );
    }
}

