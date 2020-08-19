// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CatBreedList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatBreedList _$CatBreedListFromJson(Map<String, dynamic> json) {
  return CatBreedList(
    (json['catBreeds'] as List)
        ?.map((e) =>
            e == null ? null : CatBreed.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CatBreedListToJson(CatBreedList instance) =>
    <String, dynamic>{
      'catBreeds': instance.catBreeds,
    };
