// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ngo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NGOModel _$NGOModelFromJson(Map<String, dynamic> json) {
  return _NGOModel.fromJson(json);
}

/// @nodoc
mixin _$NGOModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get postTaken => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NGOModelCopyWith<NGOModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NGOModelCopyWith<$Res> {
  factory $NGOModelCopyWith(NGOModel value, $Res Function(NGOModel) then) =
      _$NGOModelCopyWithImpl<$Res, NGOModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> postTaken,
      double latitude,
      double longitude});
}

/// @nodoc
class _$NGOModelCopyWithImpl<$Res, $Val extends NGOModel>
    implements $NGOModelCopyWith<$Res> {
  _$NGOModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? postTaken = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      postTaken: null == postTaken
          ? _value.postTaken
          : postTaken // ignore: cast_nullable_to_non_nullable
              as List<String>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NGOModelCopyWith<$Res> implements $NGOModelCopyWith<$Res> {
  factory _$$_NGOModelCopyWith(
          _$_NGOModel value, $Res Function(_$_NGOModel) then) =
      __$$_NGOModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> postTaken,
      double latitude,
      double longitude});
}

/// @nodoc
class __$$_NGOModelCopyWithImpl<$Res>
    extends _$NGOModelCopyWithImpl<$Res, _$_NGOModel>
    implements _$$_NGOModelCopyWith<$Res> {
  __$$_NGOModelCopyWithImpl(
      _$_NGOModel _value, $Res Function(_$_NGOModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? postTaken = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_NGOModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      postTaken: null == postTaken
          ? _value._postTaken
          : postTaken // ignore: cast_nullable_to_non_nullable
              as List<String>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NGOModel implements _NGOModel {
  const _$_NGOModel(
      {required this.id,
      required this.name,
      required final List<String> postTaken,
      required this.latitude,
      required this.longitude})
      : _postTaken = postTaken;

  factory _$_NGOModel.fromJson(Map<String, dynamic> json) =>
      _$$_NGOModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String> _postTaken;
  @override
  List<String> get postTaken {
    if (_postTaken is EqualUnmodifiableListView) return _postTaken;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postTaken);
  }

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'NGOModel(id: $id, name: $name, postTaken: $postTaken, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NGOModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._postTaken, _postTaken) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_postTaken), latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NGOModelCopyWith<_$_NGOModel> get copyWith =>
      __$$_NGOModelCopyWithImpl<_$_NGOModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NGOModelToJson(
      this,
    );
  }
}

abstract class _NGOModel implements NGOModel {
  const factory _NGOModel(
      {required final String id,
      required final String name,
      required final List<String> postTaken,
      required final double latitude,
      required final double longitude}) = _$_NGOModel;

  factory _NGOModel.fromJson(Map<String, dynamic> json) = _$_NGOModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get postTaken;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_NGOModelCopyWith<_$_NGOModel> get copyWith =>
      throw _privateConstructorUsedError;
}
