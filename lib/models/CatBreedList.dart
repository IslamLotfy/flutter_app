import 'package:flutterapp/models/CatBreed.dart';
import 'package:json_annotation/json_annotation.dart';

part 'CatBreedList.g.dart';

@JsonSerializable(explicitToJson: true)
class CatBreedList {
  List<CatBreed> catBreeds;

  CatBreedList(this.catBreeds);

  factory CatBreedList.fromJson(List<dynamic> json) {
    return CatBreedList(
        json.map((e) => CatBreed.fromJson(e as Map<String, dynamic>)).toList());
  }
}
