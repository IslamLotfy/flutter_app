import 'package:json_annotation/json_annotation.dart';

import 'Cat.dart';

part 'CatImage.g.dart';

@JsonSerializable(explicitToJson: true)
class CatImage {
  String id;
  String url;
  int width;
  int height;
  List<Cat> cats;

  CatImage(this.id, this.url, this.width, this.height, this.cats);

  factory CatImage.fromJson(Map<String, dynamic> json) =>
      _$CatImageFromJson(json);

  Map<String, dynamic> toJson() => _$CatImageToJson(this);
}
