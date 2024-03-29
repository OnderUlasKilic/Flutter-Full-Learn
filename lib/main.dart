// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/app_bar.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/color_learn.dart';
import 'package:flutter_full_learn/101/column_row_learn.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/custom_widget_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/list_tile_learn.dart';
import 'package:flutter_full_learn/101/list_view_builder.dart';
import 'package:flutter_full_learn/101/list_view_learn.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';
import 'package:flutter_full_learn/101/page_view_learn.dart';
import 'package:flutter_full_learn/101/scaffold_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';
import 'package:flutter_full_learn/101/statefull_learn.dart';
import 'package:flutter_full_learn/101/statefull_life_cycle.dart';
import 'package:flutter_full_learn/101/stateless_learn.dart';
import 'package:flutter_full_learn/101/text_field_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';
import 'package:flutter_full_learn/demos/color_demos_view.dart';
import 'package:flutter_full_learn/demos/color_life_cycle_view.dart';
import 'package:flutter_full_learn/demos/my_collections_demos.dart';
import 'package:flutter_full_learn/demos/note_demos_view.dart';
import 'package:flutter_full_learn/demos/stack_demo_view.dart';

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
      theme: ThemeData.dark().copyWith(
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          cardTheme: CardTheme(
            shape: ProjectMargin.roundedRectangleBorder,
          ),
          colorScheme: ThemeData.dark().colorScheme.copyWith(
                error: ColorsItems().sulu,
              ),
          textSelectionTheme: const TextSelectionThemeData(
              selectionColor: Colors.red,
              cursorColor: Colors.green,
              selectionHandleColor: Colors.black),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            iconColor: Colors.red,
            labelStyle: TextStyle(color: Colors.lime),
            border: OutlineInputBorder(),
            floatingLabelStyle: TextStyle(
              color: Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),

          // colorScheme.error: colorsitems.sulu,

          textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.red)),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const MyCollectionDemos(),
    );
  }
}
