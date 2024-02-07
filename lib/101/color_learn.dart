import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});
  final ColorsItems colorsitems = ColorsItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        // color: Theme.of(context).colorScheme.error,
        child: Text("data",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                )),
      ),
    );
  }
}

class ColorsItems {
  final Color porchase = const Color(0xffEDBF61);
  final Color sulu = const Color.fromARGB(198, 237, 97, 1);
}
