import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          return _AnimatedContainer(
            currentLength: currentLength,
          );
        },
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        inputFormatters: [
          TextInputFormatter.withFunction((oldValue, newValue) {
            if (newValue.text.contains("a")) {
              return oldValue;
            }
            return newValue;
          })
        ],
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.mail),
          border: OutlineInputBorder(),
          labelText: "Mail",
        ),
      ),
    );
  }
}

class _AnimatedContainer extends StatelessWidget {
  const _AnimatedContainer({this.currentLength});

  final int? currentLength;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 123),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green[100 * (currentLength ?? 0 ~/ 2)],
    );
  }
}
