import 'package:flutter/material.dart';
import 'package:kuis_124200055/game_store.dart';
import 'package:kuis_124200055/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Store',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const homepage(),
    );
  }
}

