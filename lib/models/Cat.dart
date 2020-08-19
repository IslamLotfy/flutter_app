import 'package:json_annotation/json_annotation.dart';

part 'Cat.g.dart';

@JsonSerializable(explicitToJson: true)
class Cat {
  String name;
  String description;
  String lifeSpan;

  Cat(this.name, this.description, this.lifeSpan);

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  Map<String, dynamic> toJson() => _$CatToJson(this);
}
