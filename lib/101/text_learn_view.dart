import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.userName});

  final String name = "Veli";
  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Wellcome $name ${name.length}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: const TextStyle(
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                color: Colors.lime,
                letterSpacing: 2,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Hello $name ${name.length}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: ProjectStyles.wellcomeStyle,
          ),
          Text(
            "Hello $name ${name.length}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: ProjectColors.wellcomeColor),
          ),
          Text(userName ?? " "),
          Text(keys.wellcome),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle wellcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.lime,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color wellcomeColor = Colors.red;
}

class ProjectKeys {
  final String wellcome = "Merhaba";
}
