import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: const RandomImage(),
                  contentPadding: EdgeInsets.zero,
                  onTap: () {},
                  subtitle: const Text("How do you use your card"),
                  minLeadingWidth: 0,
                  dense: true,
                  leading: Container(
                      height: 26,
                      width: 35,
                      alignment: Alignment.topCenter,
                      color: Colors.red,
                      child: const Icon(Icons.money)),
                  trailing: const SizedBox(
                    width: 20,
                    child: Icon(Icons.chevron_right),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
