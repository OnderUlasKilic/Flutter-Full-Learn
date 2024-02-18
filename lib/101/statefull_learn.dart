import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;

  void incrementValue() => setState(() => countValue = countValue + 1);

  void deincrementValue() => setState(() => countValue = countValue - 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
      body: Center(
        child: Text(
          "$countValue",
        ),
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
