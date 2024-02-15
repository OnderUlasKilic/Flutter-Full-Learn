import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  static const title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFoodButton(
                    title: title,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          CustomFoodButton(
            title: title,
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: _ColorsUtility.red,
                shape: const StadiumBorder()),
            onPressed: () {},
            child: Padding(
              padding: _PaddingUtility.normalPadding,
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: _ColorsUtility.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

final class _ColorsUtility {
  static const red = Colors.red;
  static const white = Colors.white;
}

final class _PaddingUtility {
  static const EdgeInsets normalPadding = EdgeInsets.all(8.0);
  static const EdgeInsets normal2xPadding = EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget {
  const CustomFoodButton(
      {super.key, required this.title, required this.onPressed});

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: _ColorsUtility.red, shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: _PaddingUtility.normal2xPadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: _ColorsUtility.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
