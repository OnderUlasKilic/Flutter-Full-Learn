import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  TextFieldLearn({super.key});

  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
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
              focusNode: widget.focusNodeTextFieldOne,
              inputFormatters: [TextProjectInputFormmater()._formmatter],
              textInputAction: TextInputAction.next,
              decoration: _InputDecarotor().emailInput,
            ),
            TextFormField(
              focusNode: widget.focusNodeTextFieldTwo,
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

class TextProjectInputFormmater {
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
