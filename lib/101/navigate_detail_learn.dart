import 'package:flutter/material.dart';

class NavigateDetailLearnDart extends StatefulWidget {
  const NavigateDetailLearnDart({super.key, this.isOkay = false});
  final bool isOkay;
  @override
  State<NavigateDetailLearnDart> createState() =>
      _NavigateDetailLearnDartState();
}

class _NavigateDetailLearnDartState extends State<NavigateDetailLearnDart> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop(!widget.isOkay);
          },
          icon: Icon(Icons.check,
              color: widget.isOkay ? Colors.red : Colors.green),
          label: widget.isOkay ? const Text("Red") : const Text("Onayla"),
        ),
      ),
    );
  }
}
