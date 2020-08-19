import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutterapp/models/CatBreedList.dart';
import 'package:flutterapp/models/CatImageList.dart';

import 'file:///F:/projects/AndroidStudioProjects/flutter_app/lib/network/CatApi.dart';

import 'GalleryListItem.dart';

class Gallery extends StatefulWidget {
  @override
  State<Gallery> createState() {
    return GalleryState();
  }
}

class GalleryState extends State<Gallery> {
  final CatApi catApi = CatApi();
  CatBreedList catBreedList;
  CatImageList catImageList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        position++;
        return GalleryListItem(
            catBreedList.catBreeds[position - 1].id,
            catBreedList.catBreeds[position - 1].name,
            catBreedList.catBreeds[position - 1].description);
      },
      itemCount: (catBreedList == null ||
              catBreedList.catBreeds == null ||
              catBreedList.catBreeds.length == 0)
          ? 0
          : catBreedList.catBreeds.length,
    );
  }

  @override
  void initState() {
    getCatData();
    super.initState();
  }

  void getCatData() async {
    var response = await catApi.getCatBreeds();
    var catBreeds = json.decode(response);
    setState(() {
      catBreedList = CatBreedList.fromJson(catBreeds);
    });
  }
}
