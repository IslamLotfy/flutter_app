import 'package:json_annotation/json_annotation.dart';

part 'CatBreed.g.dart';

@JsonSerializable(explicitToJson: true)
class CatBreed {
  String id;
  String name;
  String description;
  String temperament;

  CatBreed(this.id, this.name, this.description, this.temperament);

  factory CatBreed.fromJson(Map<String, dynamic> json) =>
      _$CatBreedFromJson(json);

  Map<String, dynamic> toJson() => _$CatBreedToJson(this);
}
