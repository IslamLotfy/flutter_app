// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Cat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cat _$CatFromJson(Map<String, dynamic> json) {
  return Cat(
    json['name'] as String,
    json['description'] as String,
    json['lifeSpan'] as String,
  );
}

Map<String, dynamic> _$CatToJson(Cat instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'lifeSpan': instance.lifeSpan,
    };
