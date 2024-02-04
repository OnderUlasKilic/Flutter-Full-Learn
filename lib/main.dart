import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/scaffold_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const ButtonLearn(),
    );
  }
}
