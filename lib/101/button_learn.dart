import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text("Save", style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
            })),
            onPressed: () {},
          ),
          ElevatedButton(onPressed: null, child: const Text("data")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_rounded)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(10),
                shape: const CircleBorder(),
              ),
              onPressed: () {},
              child: const Text("data")),
          InkWell(onTap: () {}, child: Text("custom")),
        ],
      ),
    );
  }
}
