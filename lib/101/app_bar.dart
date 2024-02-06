import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = "Wellcome Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        // centerTitle: true,
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        // systemOverlayStyle: SystemUiOverlayStyle.light,
        // toolbarTextStyle: TextStyle(color: Colors.red),
        // automaticallyImplyLeading: false,
        // actionsIconTheme: const IconThemeData(color: Colors.red, size: ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mark_email_unread_sharp)),
          const CircularProgressIndicator(),
        ],
      ),
      body: const Column(
        children: const [],
      ),
    );
  }
}
