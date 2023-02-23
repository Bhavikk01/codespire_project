import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel{

  const factory PostModel({
    required String postId,
    required String postSrc,
    required String userId,
    required DateTime postTime,
    required String postDescription,
    required bool isOccupied,
    required List<String> toNGOs,
    required String occupiedByNGOId,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, Object?> json) => _$PostModelFromJson(json);
}
