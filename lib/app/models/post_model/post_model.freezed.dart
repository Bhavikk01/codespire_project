// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  String get postId => throw _privateConstructorUsedError;
  String get postSrc => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get postTime => throw _privateConstructorUsedError;
  String get postDescription => throw _privateConstructorUsedError;
  bool get isOccupied => throw _privateConstructorUsedError;
  List<String> get toNGOs => throw _privateConstructorUsedError;
  String get occupiedByNGOId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {String postId,
      String postSrc,
      String userId,
      DateTime postTime,
      String postDescription,
      bool isOccupied,
      List<String> toNGOs,
      String occupiedByNGOId});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? postSrc = null,
    Object? userId = null,
    Object? postTime = null,
    Object? postDescription = null,
    Object? isOccupied = null,
    Object? toNGOs = null,
    Object? occupiedByNGOId = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      postSrc: null == postSrc
          ? _value.postSrc
          : postSrc // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      postTime: null == postTime
          ? _value.postTime
          : postTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postDescription: null == postDescription
          ? _value.postDescription
          : postDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isOccupied: null == isOccupied
          ? _value.isOccupied
          : isOccupied // ignore: cast_nullable_to_non_nullable
              as bool,
      toNGOs: null == toNGOs
          ? _value.toNGOs
          : toNGOs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      occupiedByNGOId: null == occupiedByNGOId
          ? _value.occupiedByNGOId
          : occupiedByNGOId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$$_PostModelCopyWith(
          _$_PostModel value, $Res Function(_$_PostModel) then) =
      __$$_PostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String postId,
      String postSrc,
      String userId,
      DateTime postTime,
      String postDescription,
      bool isOccupied,
      List<String> toNGOs,
      String occupiedByNGOId});
}

/// @nodoc
class __$$_PostModelCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$_PostModel>
    implements _$$_PostModelCopyWith<$Res> {
  __$$_PostModelCopyWithImpl(
      _$_PostModel _value, $Res Function(_$_PostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? postSrc = null,
    Object? userId = null,
    Object? postTime = null,
    Object? postDescription = null,
    Object? isOccupied = null,
    Object? toNGOs = null,
    Object? occupiedByNGOId = null,
  }) {
    return _then(_$_PostModel(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      postSrc: null == postSrc
          ? _value.postSrc
          : postSrc // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      postTime: null == postTime
          ? _value.postTime
          : postTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postDescription: null == postDescription
          ? _value.postDescription
          : postDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isOccupied: null == isOccupied
          ? _value.isOccupied
          : isOccupied // ignore: cast_nullable_to_non_nullable
              as bool,
      toNGOs: null == toNGOs
          ? _value._toNGOs
          : toNGOs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      occupiedByNGOId: null == occupiedByNGOId
          ? _value.occupiedByNGOId
          : occupiedByNGOId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostModel implements _PostModel {
  const _$_PostModel(
      {required this.postId,
      required this.postSrc,
      required this.userId,
      required this.postTime,
      required this.postDescription,
      required this.isOccupied,
      required final List<String> toNGOs,
      required this.occupiedByNGOId})
      : _toNGOs = toNGOs;

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostModelFromJson(json);

  @override
  final String postId;
  @override
  final String postSrc;
  @override
  final String userId;
  @override
  final DateTime postTime;
  @override
  final String postDescription;
  @override
  final bool isOccupied;
  final List<String> _toNGOs;
  @override
  List<String> get toNGOs {
    if (_toNGOs is EqualUnmodifiableListView) return _toNGOs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toNGOs);
  }

  @override
  final String occupiedByNGOId;

  @override
  String toString() {
    return 'PostModel(postId: $postId, postSrc: $postSrc, userId: $userId, postTime: $postTime, postDescription: $postDescription, isOccupied: $isOccupied, toNGOs: $toNGOs, occupiedByNGOId: $occupiedByNGOId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostModel &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.postSrc, postSrc) || other.postSrc == postSrc) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.postTime, postTime) ||
                other.postTime == postTime) &&
            (identical(other.postDescription, postDescription) ||
                other.postDescription == postDescription) &&
            (identical(other.isOccupied, isOccupied) ||
                other.isOccupied == isOccupied) &&
            const DeepCollectionEquality().equals(other._toNGOs, _toNGOs) &&
            (identical(other.occupiedByNGOId, occupiedByNGOId) ||
                other.occupiedByNGOId == occupiedByNGOId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      postSrc,
      userId,
      postTime,
      postDescription,
      isOccupied,
      const DeepCollectionEquality().hash(_toNGOs),
      occupiedByNGOId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      __$$_PostModelCopyWithImpl<_$_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostModelToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {required final String postId,
      required final String postSrc,
      required final String userId,
      required final DateTime postTime,
      required final String postDescription,
      required final bool isOccupied,
      required final List<String> toNGOs,
      required final String occupiedByNGOId}) = _$_PostModel;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  String get postId;
  @override
  String get postSrc;
  @override
  String get userId;
  @override
  DateTime get postTime;
  @override
  String get postDescription;
  @override
  bool get isOccupied;
  @override
  List<String> get toNGOs;
  @override
  String get occupiedByNGOId;
  @override
  @JsonKey(ignore: true)
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
