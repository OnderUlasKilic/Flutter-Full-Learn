import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 100,
            width: 200,
          ),
          Container(
            color: Colors.white,
            height: 100,
            width: 200,
          ),
        ],
      ),
    );
  }
}
