import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  void incrementValue() => setState(() => _countValue = _countValue + 1);

  void deincrementValue() => setState(() => _countValue = _countValue - 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.wellcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _IncrementButton(
            onPressed: incrementValue,
          ),
          const SizedBox(
            width: 10,
          ),
          _DeincrementButton(
            onPressed: deincrementValue,
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "$_countValue",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }
}

class _IncrementButton extends StatelessWidget {
  const _IncrementButton({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    print("burda");
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(
        Icons.add,
      ),
    );
  }
}

class _DeincrementButton extends StatelessWidget {
  const _DeincrementButton({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(
        Icons.remove,
      ),
    );
  }
}
