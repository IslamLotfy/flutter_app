import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/models/CatImageList.dart';
import 'package:flutterapp/network/CatApi.dart';

class GalleryListItem extends StatefulWidget {
  String name;
  String description;
  String id;

  GalleryListItem(this.id, this.name, this.description);

  @override
  State<StatefulWidget> createState() {
    return GalleryListItemState(id, name, description);
  }
}

class GalleryListItemState extends State<GalleryListItem> {
  String name;
  String description;
  String id;
  final CatApi catApi = CatApi();
  CatImageList catImageList;

  GalleryListItemState(this.id, this.name, this.description);

  @override
  void initState() {
    getCatBreed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 12.0),
              child: (catImageList == null ||
                      catImageList.catImages == null ||
                      catImageList.catImages.length == 0)
                  ? Image.asset("assets/images/cat_avatar.jpg")
                  : Image.network(catImageList.catImages[0].url)),
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 0, 12.0, 12.0),
            child: Text(name, style: Theme.of(context).textTheme.headline6),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(12.0, 0, 12.0, 12.0),
              child: Text(description))
        ],
      ),
    );
  }

  void getCatBreed() async {
    var res2 = await catApi.getCatBreed(id);
    var catBreeds = json.decode(res2);
    setState(() {
      catImageList = CatImageList.fromJson(catBreeds);
    });
  }
}
