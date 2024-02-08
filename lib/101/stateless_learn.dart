import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});
  final veli = 'veli1';
  @override
  Widget build(BuildContext context) {
    var veli = 'veli1';
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          TitleTextWidget(text: "${veli}"),
          const _emptyBox(),
          const TitleTextWidget(text: "veli2"),
          const _emptyBox(),
          const TitleTextWidget(text: "veli3"),
          const _emptyBox(),
          const TitleTextWidget(text: "veli4"),
          const _emptyBox(),
          const TitleTextWidget(text: "veli5"),
          const CustomContainer(),
          const _emptyBox(),
        ]));
  }
}

class _emptyBox extends StatelessWidget {
  const _emptyBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
