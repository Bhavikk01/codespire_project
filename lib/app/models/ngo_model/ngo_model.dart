import 'package:freezed_annotation/freezed_annotation.dart';

part 'ngo_model.freezed.dart';
part 'ngo_model.g.dart';

@freezed
class NGOModel with _$NGOModel{

  const factory NGOModel({
    required String id,
    required String name,
    required List<String> postTaken,
    required double latitude,
    required double longitude,
  }) = _NGOModel;

  factory NGOModel.fromJson(Map<String, Object?> json) => _$NGOModelFromJson(json);
}
