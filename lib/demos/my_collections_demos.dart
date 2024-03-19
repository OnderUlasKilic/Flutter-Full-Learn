import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionsModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().item;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      padding: PaddingUtility.paddingHorizontal,
      itemBuilder: (context, index) {
        return _CategoryCard(model: _items[index]);
      },
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionsModel model,
  }) : _model = model;

  final CollectionsModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility.paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility.paddingGeneral,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
                height: 200,
              )),
              Padding(
                padding: PaddingUtility.paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text("${_model.price} eth")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionsModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionsModel({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

class CollectionItems {
  final List<CollectionsModel> item;

  CollectionItems()
      : item = [
          CollectionsModel(
              imagePath: ProjectImages.imageCollection,
              title: "Abstract Art",
              price: 3.4),
          CollectionsModel(
              imagePath: ProjectImages.imageCollection,
              title: "Abstract Art2",
              price: 3.4),
          CollectionsModel(
              imagePath: ProjectImages.imageCollection,
              title: "Abstract Art3",
              price: 3.4),
          CollectionsModel(
              imagePath: ProjectImages.imageCollection,
              title: "Abstract Art4",
              price: 3.4)
        ];
}

abstract final class PaddingUtility {
  static const paddingTop = EdgeInsets.only(top: 10);
  static const paddingBottom = EdgeInsets.only(bottom: 20);
  static const paddingGeneral = EdgeInsets.all(20);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}

abstract final class ProjectImages {
  static const imageCollection = "assets/png/image_collection.png";
}
