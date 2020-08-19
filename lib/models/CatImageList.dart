import 'package:flutterapp/models/CatImage.dart';
import 'package:json_annotation/json_annotation.dart';

part 'CatImageList.g.dart';

@JsonSerializable(explicitToJson: true)
class CatImageList {
  List<CatImage> catImages;

  CatImageList(this.catImages);

  factory CatImageList.fromJson(List<dynamic> json) {
    return CatImageList(
        json.map((e) => CatImage.fromJson(e as Map<String, dynamic>)).toList());
  }
}
