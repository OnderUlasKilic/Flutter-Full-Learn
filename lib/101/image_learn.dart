import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 300,
            child: PngImage(
              name: ImageItems().appleBookWithOutPath,
            ),
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqiEyGxuHjfdPPlcHNCT_mfX2E5_FnEKVgnQ&usqp=CAU",
            errorBuilder: (context, error, stackTrace) =>
                PngImage(name: ImageItems().appleBookWithOutPath),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/apple_with_book.jfif";
  final String appleBook = "assets/png/ic_apple_with_school_book.png";
  final String appleBookWithOutPath = "ic_apple_with_school_book";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => "assets/png/$name.png";
}
