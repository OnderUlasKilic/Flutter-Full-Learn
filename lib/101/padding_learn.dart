import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjecPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: ProjecPadding.pagePaddingAll,
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: ProjecPadding.pagePaddingSymmetric,
              child: Container(color: Colors.white, height: 100),
            ),
            const Padding(
              padding: ProjecPadding.pagePaddingRightOnly,
              child: Text("Ali"),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjecPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
  static const pagePaddingAll = EdgeInsets.all(10);
  static const pagePaddingSymmetric =
      EdgeInsets.symmetric(vertical: 10, horizontal: 20);
}
