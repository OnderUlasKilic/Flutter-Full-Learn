// Bir ekran olacak
// Bu ekranda 3 button ve bunlara basince renk değişimi olacak
// Secili olan buton selected icon olsun
import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});

  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    inspect(widget);
    print(oldWidget.initialColor != _backgroundColor);
    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == _MyColors.red.index) {
              changeBackgroundColor(Colors.red);
            } else if (value == _MyColors.yellow.index) {
              changeBackgroundColor(Colors.yellow);
            } else if (value == _MyColors.blue.index) {
              changeBackgroundColor(Colors.blue);
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.red), label: "Red"),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.yellow), label: "Yellow"),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.blue), label: "Blue"),
          ]),
    );
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}

// void _ColorOnTap(int value) {
//   if (value == _MyColors.red.index) {
//     changeBackgroundColor(Colors.red);
//   } else if (value == _MyColors.yellow.index) {
//     changeBackgroundColor(Colors.yellow);
//   } else if (value == _MyColors.blue.index) {
//     changeBackgroundColor(Colors.blue);
//   }
// }
