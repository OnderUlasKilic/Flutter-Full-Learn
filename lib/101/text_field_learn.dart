import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  late final FocusNode focusNodeTextFieldOne;
  late final FocusNode focusNodeTextFieldTwo;

  @override
  void initState() {
    super.initState();
    focusNodeTextFieldOne = FocusNode();
    focusNodeTextFieldTwo = FocusNode();
  }

  @override
  void dispose() {
    focusNodeTextFieldOne.dispose();
    focusNodeTextFieldTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            TextField(
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
              focusNode: focusNodeTextFieldOne,
              inputFormatters: [TextProjectInputFormatter()._formmatter],
              textInputAction: TextInputAction.next,
              decoration: _InputDecarotor().emailInput,
            ),
            TextFormField(
              focusNode: focusNodeTextFieldTwo,
              minLines: 2,
              maxLines: 4,
            ),
          ],
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

class TextProjectInputFormatter {
  final _formmatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text.contains("a")) {
      return oldValue;
    }
    return newValue;
  });
}

class _InputDecarotor {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}
