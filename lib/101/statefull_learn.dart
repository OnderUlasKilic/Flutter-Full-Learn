import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;

  void incrementValue() {
    setState(
      () {
        countValue = countValue + 1;
      },
    );
  }

  void deincrementValue() {
    setState(() {
      countValue = countValue - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _IncrementButton(onPressed: incrementValue),
          _DeincrementButton(onPressed: deincrementValue),
        ],
      ),
      body: Center(
        child: Text(
          countValue.toString(),
        ),
      ),
    );
  }
}

class _IncrementButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _IncrementButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}

class _DeincrementButton extends StatelessWidget {
  final VoidCallback onPressed;
  const _DeincrementButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: const Icon(Icons.remove),
      ),
    );
  }
}
