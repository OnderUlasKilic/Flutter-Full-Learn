import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  static const _title = "Create your first note";
  static const _description = "Add a note";
  static const _createNote = "Create a Note";
  static const _importNotes = "İmport Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 237, 255),
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizantalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleBookWithOutPath),
            const _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleWidget(
                title: _description * 10,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            const _CreateButton(createNote: _createNote),
            TextButton(
              onPressed: () {},
              child: const Text(_importNotes,
                  style: TextStyle(color: Colors.black)),
            ),
            const SizedBox(
              height: ButtonHeights.buttonNormalHeight,
            )
          ],
        ),
      ),
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    required String createNote,
  }) : _createNote = createNote;

  final String _createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeights.buttonNormalHeight,
        child: Center(
          child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}

// Center text widget
class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({
    required this.title,
    required this.textAlign,
  });
  final String title;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text("Add a note" * 8,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizantalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
