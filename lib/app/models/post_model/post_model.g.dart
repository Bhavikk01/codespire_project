// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      postId: json['postId'] as String,
      postSrc: json['postSrc'] as String,
      userId: json['userId'] as String,
      postTime: DateTime.parse(json['postTime'] as String),
      postDescription: json['postDescription'] as String,
      isOccupied: json['isOccupied'] as bool,
      toNGOs:
          (json['toNGOs'] as List<dynamic>).map((e) => e as String).toList(),
      occupiedByNGOId: json['occupiedByNGOId'] as String,
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'postSrc': instance.postSrc,
      'userId': instance.userId,
      'postTime': instance.postTime.toIso8601String(),
      'postDescription': instance.postDescription,
      'isOccupied': instance.isOccupied,
      'toNGOs': instance.toNGOs,
      'occupiedByNGOId': instance.occupiedByNGOId,
    };
