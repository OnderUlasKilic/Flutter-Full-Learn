import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});

  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  late String _message;
  late final bool _isOdd;

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Çift";
    } else {
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isOdd ? "Kelime tek" : "Kelime çift"),
      ),
      body: _isOdd
          ? TextButton(
              onPressed: () {},
              child: Text(_message),
            )
          : ElevatedButton(
              onPressed: () {},
              child: Text(_message),
            ),
    );
  }
}
