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
              padding: EdgeInsets.all(10),
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(color: Colors.white, height: 100),
            ),
            const Padding(
              padding: ProjecPadding.pagePAddingRightOnly,
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
  static const pagePAddingRightOnly = EdgeInsets.only(right: 20);
}
