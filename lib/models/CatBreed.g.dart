// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CatBreed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatBreed _$CatBreedFromJson(Map<String, dynamic> json) {
  return CatBreed(
    json['id'] as String,
    json['name'] as String,
    json['description'] as String,
    json['temperament'] as String,
  );
}

Map<String, dynamic> _$CatBreedToJson(CatBreed instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'temperament': instance.temperament,
    };
