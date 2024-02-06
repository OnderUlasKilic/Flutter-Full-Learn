import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello")),
      body: Column(children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.message_outlined),
          color: Colors.red,
          iconSize: iconSize.iconSmall,
        ),
      ]),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}
