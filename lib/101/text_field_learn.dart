import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: 20,
        buildCounter: (
          BuildContext context, {
          int? currentLength,
          bool? isFocused,
          int? maxLength,
        }) {
          return const Text("data");
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.mail),
          border: OutlineInputBorder(),
          labelText: "Mail",
        ),
      ),
    );
  }
}
