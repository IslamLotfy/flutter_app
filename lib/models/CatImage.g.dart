// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CatImage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatImage _$CatImageFromJson(Map<String, dynamic> json) {
  return CatImage(
    json['id'] as String,
    json['url'] as String,
    json['width'] as int,
    json['height'] as int,
    (json['cats'] as List)
        ?.map((e) => e == null ? null : Cat.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CatImageToJson(CatImage instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'cats': instance.cats,
    };
