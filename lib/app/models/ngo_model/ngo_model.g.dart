// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ngo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NGOModel _$$_NGOModelFromJson(Map<String, dynamic> json) => _$_NGOModel(
      id: json['id'] as String,
      name: json['name'] as String,
      postTaken:
          (json['postTaken'] as List<dynamic>).map((e) => e as String).toList(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_NGOModelToJson(_$_NGOModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'postTaken': instance.postTaken,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
