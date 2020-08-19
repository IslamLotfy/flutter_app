// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CatImageList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatImageList _$CatImageListFromJson(Map<String, dynamic> json) {
  return CatImageList(
    (json['catImages'] as List)
        ?.map((e) =>
            e == null ? null : CatImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CatImageListToJson(CatImageList instance) =>
    <String, dynamic>{
      'catImages': instance.catImages,
    };
