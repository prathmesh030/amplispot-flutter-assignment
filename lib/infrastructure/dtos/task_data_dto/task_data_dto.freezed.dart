// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskDataDto _$TaskDataDtoFromJson(Map<String, dynamic> json) {
  return _TaskDataDto.fromJson(json);
}

/// @nodoc
mixin _$TaskDataDto {
  @JsonKey(name: 'customization_settings')
  List<CustomizationSetting> get customizationSettings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  String get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDataDtoCopyWith<TaskDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDataDtoCopyWith<$Res> {
  factory $TaskDataDtoCopyWith(
          TaskDataDto value, $Res Function(TaskDataDto) then) =
      _$TaskDataDtoCopyWithImpl<$Res, TaskDataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customization_settings')
      List<CustomizationSetting> customizationSettings,
      @JsonKey(name: 'media') String media});
}

/// @nodoc
class _$TaskDataDtoCopyWithImpl<$Res, $Val extends TaskDataDto>
    implements $TaskDataDtoCopyWith<$Res> {
  _$TaskDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customizationSettings = null,
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      customizationSettings: null == customizationSettings
          ? _value.customizationSettings
          : customizationSettings // ignore: cast_nullable_to_non_nullable
              as List<CustomizationSetting>,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskDataDtoImplCopyWith<$Res>
    implements $TaskDataDtoCopyWith<$Res> {
  factory _$$TaskDataDtoImplCopyWith(
          _$TaskDataDtoImpl value, $Res Function(_$TaskDataDtoImpl) then) =
      __$$TaskDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customization_settings')
      List<CustomizationSetting> customizationSettings,
      @JsonKey(name: 'media') String media});
}

/// @nodoc
class __$$TaskDataDtoImplCopyWithImpl<$Res>
    extends _$TaskDataDtoCopyWithImpl<$Res, _$TaskDataDtoImpl>
    implements _$$TaskDataDtoImplCopyWith<$Res> {
  __$$TaskDataDtoImplCopyWithImpl(
      _$TaskDataDtoImpl _value, $Res Function(_$TaskDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customizationSettings = null,
    Object? media = null,
  }) {
    return _then(_$TaskDataDtoImpl(
      customizationSettings: null == customizationSettings
          ? _value._customizationSettings
          : customizationSettings // ignore: cast_nullable_to_non_nullable
              as List<CustomizationSetting>,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskDataDtoImpl implements _TaskDataDto {
  const _$TaskDataDtoImpl(
      {@JsonKey(name: 'customization_settings')
      required final List<CustomizationSetting> customizationSettings,
      @JsonKey(name: 'media') required this.media})
      : _customizationSettings = customizationSettings;

  factory _$TaskDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskDataDtoImplFromJson(json);

  final List<CustomizationSetting> _customizationSettings;
  @override
  @JsonKey(name: 'customization_settings')
  List<CustomizationSetting> get customizationSettings {
    if (_customizationSettings is EqualUnmodifiableListView)
      return _customizationSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customizationSettings);
  }

  @override
  @JsonKey(name: 'media')
  final String media;

  @override
  String toString() {
    return 'TaskDataDto(customizationSettings: $customizationSettings, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDataDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._customizationSettings, _customizationSettings) &&
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_customizationSettings), media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDataDtoImplCopyWith<_$TaskDataDtoImpl> get copyWith =>
      __$$TaskDataDtoImplCopyWithImpl<_$TaskDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDataDtoImplToJson(
      this,
    );
  }
}

abstract class _TaskDataDto implements TaskDataDto {
  const factory _TaskDataDto(
      {@JsonKey(name: 'customization_settings')
      required final List<CustomizationSetting> customizationSettings,
      @JsonKey(name: 'media') required final String media}) = _$TaskDataDtoImpl;

  factory _TaskDataDto.fromJson(Map<String, dynamic> json) =
      _$TaskDataDtoImpl.fromJson;

  @override
  @JsonKey(name: 'customization_settings')
  List<CustomizationSetting> get customizationSettings;
  @override
  @JsonKey(name: 'media')
  String get media;
  @override
  @JsonKey(ignore: true)
  _$$TaskDataDtoImplCopyWith<_$TaskDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomizationSetting _$CustomizationSettingFromJson(Map<String, dynamic> json) {
  return _CustomizationSetting.fromJson(json);
}

/// @nodoc
mixin _$CustomizationSetting {
  @JsonKey(name: 'order')
  int get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'configs')
  Configs get configs => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomizationSettingCopyWith<CustomizationSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomizationSettingCopyWith<$Res> {
  factory $CustomizationSettingCopyWith(CustomizationSetting value,
          $Res Function(CustomizationSetting) then) =
      _$CustomizationSettingCopyWithImpl<$Res, CustomizationSetting>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order') int order,
      @JsonKey(name: 'configs') Configs configs,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'value') String value});

  $ConfigsCopyWith<$Res> get configs;
}

/// @nodoc
class _$CustomizationSettingCopyWithImpl<$Res,
        $Val extends CustomizationSetting>
    implements $CustomizationSettingCopyWith<$Res> {
  _$CustomizationSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? configs = null,
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      configs: null == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as Configs,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfigsCopyWith<$Res> get configs {
    return $ConfigsCopyWith<$Res>(_value.configs, (value) {
      return _then(_value.copyWith(configs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomizationSettingImplCopyWith<$Res>
    implements $CustomizationSettingCopyWith<$Res> {
  factory _$$CustomizationSettingImplCopyWith(_$CustomizationSettingImpl value,
          $Res Function(_$CustomizationSettingImpl) then) =
      __$$CustomizationSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order') int order,
      @JsonKey(name: 'configs') Configs configs,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'value') String value});

  @override
  $ConfigsCopyWith<$Res> get configs;
}

/// @nodoc
class __$$CustomizationSettingImplCopyWithImpl<$Res>
    extends _$CustomizationSettingCopyWithImpl<$Res, _$CustomizationSettingImpl>
    implements _$$CustomizationSettingImplCopyWith<$Res> {
  __$$CustomizationSettingImplCopyWithImpl(_$CustomizationSettingImpl _value,
      $Res Function(_$CustomizationSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? configs = null,
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_$CustomizationSettingImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      configs: null == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as Configs,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomizationSettingImpl implements _CustomizationSetting {
  const _$CustomizationSettingImpl(
      {@JsonKey(name: 'order') required this.order,
      @JsonKey(name: 'configs') required this.configs,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'value') required this.value});

  factory _$CustomizationSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomizationSettingImplFromJson(json);

  @override
  @JsonKey(name: 'order')
  final int order;
  @override
  @JsonKey(name: 'configs')
  final Configs configs;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'CustomizationSetting(order: $order, configs: $configs, title: $title, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomizationSettingImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.configs, configs) || other.configs == configs) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order, configs, title, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomizationSettingImplCopyWith<_$CustomizationSettingImpl>
      get copyWith =>
          __$$CustomizationSettingImplCopyWithImpl<_$CustomizationSettingImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomizationSettingImplToJson(
      this,
    );
  }
}

abstract class _CustomizationSetting implements CustomizationSetting {
  const factory _CustomizationSetting(
          {@JsonKey(name: 'order') required final int order,
          @JsonKey(name: 'configs') required final Configs configs,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'value') required final String value}) =
      _$CustomizationSettingImpl;

  factory _CustomizationSetting.fromJson(Map<String, dynamic> json) =
      _$CustomizationSettingImpl.fromJson;

  @override
  @JsonKey(name: 'order')
  int get order;
  @override
  @JsonKey(name: 'configs')
  Configs get configs;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$CustomizationSettingImplCopyWith<_$CustomizationSettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Configs _$ConfigsFromJson(Map<String, dynamic> json) {
  return _Configs.fromJson(json);
}

/// @nodoc
mixin _$Configs {
  @JsonKey(name: 'top')
  int get top => throw _privateConstructorUsedError;
  @JsonKey(name: 'left')
  int get left => throw _privateConstructorUsedError;
  @JsonKey(name: 'font_size')
  int get fontSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'allignment')
  Allignment get allignment => throw _privateConstructorUsedError;
  @JsonKey(name: 'dimensions')
  Dimensions? get dimensions => throw _privateConstructorUsedError;
  @JsonKey(name: 'font_color')
  String get fontColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'font_style')
  FontStyle get fontStyle => throw _privateConstructorUsedError;
  @JsonKey(name: 'font_weight')
  Allignment get fontWeight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigsCopyWith<Configs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigsCopyWith<$Res> {
  factory $ConfigsCopyWith(Configs value, $Res Function(Configs) then) =
      _$ConfigsCopyWithImpl<$Res, Configs>;
  @useResult
  $Res call(
      {@JsonKey(name: 'top') int top,
      @JsonKey(name: 'left') int left,
      @JsonKey(name: 'font_size') int fontSize,
      @JsonKey(name: 'allignment') Allignment allignment,
      @JsonKey(name: 'dimensions') Dimensions? dimensions,
      @JsonKey(name: 'font_color') String fontColor,
      @JsonKey(name: 'font_style') FontStyle fontStyle,
      @JsonKey(name: 'font_weight') Allignment fontWeight});

  $AllignmentCopyWith<$Res> get allignment;
  $DimensionsCopyWith<$Res>? get dimensions;
  $FontStyleCopyWith<$Res> get fontStyle;
  $AllignmentCopyWith<$Res> get fontWeight;
}

/// @nodoc
class _$ConfigsCopyWithImpl<$Res, $Val extends Configs>
    implements $ConfigsCopyWith<$Res> {
  _$ConfigsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? left = null,
    Object? fontSize = null,
    Object? allignment = null,
    Object? dimensions = freezed,
    Object? fontColor = null,
    Object? fontStyle = null,
    Object? fontWeight = null,
  }) {
    return _then(_value.copyWith(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int,
      allignment: null == allignment
          ? _value.allignment
          : allignment // ignore: cast_nullable_to_non_nullable
              as Allignment,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      fontColor: null == fontColor
          ? _value.fontColor
          : fontColor // ignore: cast_nullable_to_non_nullable
              as String,
      fontStyle: null == fontStyle
          ? _value.fontStyle
          : fontStyle // ignore: cast_nullable_to_non_nullable
              as FontStyle,
      fontWeight: null == fontWeight
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as Allignment,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllignmentCopyWith<$Res> get allignment {
    return $AllignmentCopyWith<$Res>(_value.allignment, (value) {
      return _then(_value.copyWith(allignment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<$Res>? get dimensions {
    if (_value.dimensions == null) {
      return null;
    }

    return $DimensionsCopyWith<$Res>(_value.dimensions!, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FontStyleCopyWith<$Res> get fontStyle {
    return $FontStyleCopyWith<$Res>(_value.fontStyle, (value) {
      return _then(_value.copyWith(fontStyle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AllignmentCopyWith<$Res> get fontWeight {
    return $AllignmentCopyWith<$Res>(_value.fontWeight, (value) {
      return _then(_value.copyWith(fontWeight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfigsImplCopyWith<$Res> implements $ConfigsCopyWith<$Res> {
  factory _$$ConfigsImplCopyWith(
          _$ConfigsImpl value, $Res Function(_$ConfigsImpl) then) =
      __$$ConfigsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'top') int top,
      @JsonKey(name: 'left') int left,
      @JsonKey(name: 'font_size') int fontSize,
      @JsonKey(name: 'allignment') Allignment allignment,
      @JsonKey(name: 'dimensions') Dimensions? dimensions,
      @JsonKey(name: 'font_color') String fontColor,
      @JsonKey(name: 'font_style') FontStyle fontStyle,
      @JsonKey(name: 'font_weight') Allignment fontWeight});

  @override
  $AllignmentCopyWith<$Res> get allignment;
  @override
  $DimensionsCopyWith<$Res>? get dimensions;
  @override
  $FontStyleCopyWith<$Res> get fontStyle;
  @override
  $AllignmentCopyWith<$Res> get fontWeight;
}

/// @nodoc
class __$$ConfigsImplCopyWithImpl<$Res>
    extends _$ConfigsCopyWithImpl<$Res, _$ConfigsImpl>
    implements _$$ConfigsImplCopyWith<$Res> {
  __$$ConfigsImplCopyWithImpl(
      _$ConfigsImpl _value, $Res Function(_$ConfigsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? left = null,
    Object? fontSize = null,
    Object? allignment = null,
    Object? dimensions = freezed,
    Object? fontColor = null,
    Object? fontStyle = null,
    Object? fontWeight = null,
  }) {
    return _then(_$ConfigsImpl(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int,
      allignment: null == allignment
          ? _value.allignment
          : allignment // ignore: cast_nullable_to_non_nullable
              as Allignment,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimensions?,
      fontColor: null == fontColor
          ? _value.fontColor
          : fontColor // ignore: cast_nullable_to_non_nullable
              as String,
      fontStyle: null == fontStyle
          ? _value.fontStyle
          : fontStyle // ignore: cast_nullable_to_non_nullable
              as FontStyle,
      fontWeight: null == fontWeight
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as Allignment,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigsImpl implements _Configs {
  const _$ConfigsImpl(
      {@JsonKey(name: 'top') required this.top,
      @JsonKey(name: 'left') required this.left,
      @JsonKey(name: 'font_size') required this.fontSize,
      @JsonKey(name: 'allignment') required this.allignment,
      @JsonKey(name: 'dimensions') this.dimensions,
      @JsonKey(name: 'font_color') required this.fontColor,
      @JsonKey(name: 'font_style') required this.fontStyle,
      @JsonKey(name: 'font_weight') required this.fontWeight});

  factory _$ConfigsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigsImplFromJson(json);

  @override
  @JsonKey(name: 'top')
  final int top;
  @override
  @JsonKey(name: 'left')
  final int left;
  @override
  @JsonKey(name: 'font_size')
  final int fontSize;
  @override
  @JsonKey(name: 'allignment')
  final Allignment allignment;
  @override
  @JsonKey(name: 'dimensions')
  final Dimensions? dimensions;
  @override
  @JsonKey(name: 'font_color')
  final String fontColor;
  @override
  @JsonKey(name: 'font_style')
  final FontStyle fontStyle;
  @override
  @JsonKey(name: 'font_weight')
  final Allignment fontWeight;

  @override
  String toString() {
    return 'Configs(top: $top, left: $left, fontSize: $fontSize, allignment: $allignment, dimensions: $dimensions, fontColor: $fontColor, fontStyle: $fontStyle, fontWeight: $fontWeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigsImpl &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.allignment, allignment) ||
                other.allignment == allignment) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.fontColor, fontColor) ||
                other.fontColor == fontColor) &&
            (identical(other.fontStyle, fontStyle) ||
                other.fontStyle == fontStyle) &&
            (identical(other.fontWeight, fontWeight) ||
                other.fontWeight == fontWeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, top, left, fontSize, allignment,
      dimensions, fontColor, fontStyle, fontWeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigsImplCopyWith<_$ConfigsImpl> get copyWith =>
      __$$ConfigsImplCopyWithImpl<_$ConfigsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigsImplToJson(
      this,
    );
  }
}

abstract class _Configs implements Configs {
  const factory _Configs(
          {@JsonKey(name: 'top') required final int top,
          @JsonKey(name: 'left') required final int left,
          @JsonKey(name: 'font_size') required final int fontSize,
          @JsonKey(name: 'allignment') required final Allignment allignment,
          @JsonKey(name: 'dimensions') final Dimensions? dimensions,
          @JsonKey(name: 'font_color') required final String fontColor,
          @JsonKey(name: 'font_style') required final FontStyle fontStyle,
          @JsonKey(name: 'font_weight') required final Allignment fontWeight}) =
      _$ConfigsImpl;

  factory _Configs.fromJson(Map<String, dynamic> json) = _$ConfigsImpl.fromJson;

  @override
  @JsonKey(name: 'top')
  int get top;
  @override
  @JsonKey(name: 'left')
  int get left;
  @override
  @JsonKey(name: 'font_size')
  int get fontSize;
  @override
  @JsonKey(name: 'allignment')
  Allignment get allignment;
  @override
  @JsonKey(name: 'dimensions')
  Dimensions? get dimensions;
  @override
  @JsonKey(name: 'font_color')
  String get fontColor;
  @override
  @JsonKey(name: 'font_style')
  FontStyle get fontStyle;
  @override
  @JsonKey(name: 'font_weight')
  Allignment get fontWeight;
  @override
  @JsonKey(ignore: true)
  _$$ConfigsImplCopyWith<_$ConfigsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Allignment _$AllignmentFromJson(Map<String, dynamic> json) {
  return _Allignment.fromJson(json);
}

/// @nodoc
mixin _$Allignment {
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllignmentCopyWith<Allignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllignmentCopyWith<$Res> {
  factory $AllignmentCopyWith(
          Allignment value, $Res Function(Allignment) then) =
      _$AllignmentCopyWithImpl<$Res, Allignment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'value') String value});
}

/// @nodoc
class _$AllignmentCopyWithImpl<$Res, $Val extends Allignment>
    implements $AllignmentCopyWith<$Res> {
  _$AllignmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllignmentImplCopyWith<$Res>
    implements $AllignmentCopyWith<$Res> {
  factory _$$AllignmentImplCopyWith(
          _$AllignmentImpl value, $Res Function(_$AllignmentImpl) then) =
      __$$AllignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$AllignmentImplCopyWithImpl<$Res>
    extends _$AllignmentCopyWithImpl<$Res, _$AllignmentImpl>
    implements _$$AllignmentImplCopyWith<$Res> {
  __$$AllignmentImplCopyWithImpl(
      _$AllignmentImpl _value, $Res Function(_$AllignmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? value = null,
  }) {
    return _then(_$AllignmentImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllignmentImpl implements _Allignment {
  const _$AllignmentImpl(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'value') required this.value});

  factory _$AllignmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllignmentImplFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String text;
  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'Allignment(text: $text, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllignmentImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllignmentImplCopyWith<_$AllignmentImpl> get copyWith =>
      __$$AllignmentImplCopyWithImpl<_$AllignmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllignmentImplToJson(
      this,
    );
  }
}

abstract class _Allignment implements Allignment {
  const factory _Allignment(
      {@JsonKey(name: 'text') required final String text,
      @JsonKey(name: 'value') required final String value}) = _$AllignmentImpl;

  factory _Allignment.fromJson(Map<String, dynamic> json) =
      _$AllignmentImpl.fromJson;

  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$AllignmentImplCopyWith<_$AllignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dimensions _$DimensionsFromJson(Map<String, dynamic> json) {
  return _Dimensions.fromJson(json);
}

/// @nodoc
mixin _$Dimensions {
  @JsonKey(name: 'width')
  int get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DimensionsCopyWith<Dimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionsCopyWith<$Res> {
  factory $DimensionsCopyWith(
          Dimensions value, $Res Function(Dimensions) then) =
      _$DimensionsCopyWithImpl<$Res, Dimensions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'width') int width, @JsonKey(name: 'height') int height});
}

/// @nodoc
class _$DimensionsCopyWithImpl<$Res, $Val extends Dimensions>
    implements $DimensionsCopyWith<$Res> {
  _$DimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DimensionsImplCopyWith<$Res>
    implements $DimensionsCopyWith<$Res> {
  factory _$$DimensionsImplCopyWith(
          _$DimensionsImpl value, $Res Function(_$DimensionsImpl) then) =
      __$$DimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'width') int width, @JsonKey(name: 'height') int height});
}

/// @nodoc
class __$$DimensionsImplCopyWithImpl<$Res>
    extends _$DimensionsCopyWithImpl<$Res, _$DimensionsImpl>
    implements _$$DimensionsImplCopyWith<$Res> {
  __$$DimensionsImplCopyWithImpl(
      _$DimensionsImpl _value, $Res Function(_$DimensionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$DimensionsImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DimensionsImpl implements _Dimensions {
  const _$DimensionsImpl(
      {@JsonKey(name: 'width') required this.width,
      @JsonKey(name: 'height') required this.height});

  factory _$DimensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DimensionsImplFromJson(json);

  @override
  @JsonKey(name: 'width')
  final int width;
  @override
  @JsonKey(name: 'height')
  final int height;

  @override
  String toString() {
    return 'Dimensions(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionsImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionsImplCopyWith<_$DimensionsImpl> get copyWith =>
      __$$DimensionsImplCopyWithImpl<_$DimensionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DimensionsImplToJson(
      this,
    );
  }
}

abstract class _Dimensions implements Dimensions {
  const factory _Dimensions(
      {@JsonKey(name: 'width') required final int width,
      @JsonKey(name: 'height') required final int height}) = _$DimensionsImpl;

  factory _Dimensions.fromJson(Map<String, dynamic> json) =
      _$DimensionsImpl.fromJson;

  @override
  @JsonKey(name: 'width')
  int get width;
  @override
  @JsonKey(name: 'height')
  int get height;
  @override
  @JsonKey(ignore: true)
  _$$DimensionsImplCopyWith<_$DimensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FontStyle _$FontStyleFromJson(Map<String, dynamic> json) {
  return _FontStyle.fromJson(json);
}

/// @nodoc
mixin _$FontStyle {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  Links get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FontStyleCopyWith<FontStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FontStyleCopyWith<$Res> {
  factory $FontStyleCopyWith(FontStyle value, $Res Function(FontStyle) then) =
      _$FontStyleCopyWithImpl<$Res, FontStyle>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'links') Links links});

  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class _$FontStyleCopyWithImpl<$Res, $Val extends FontStyle>
    implements $FontStyleCopyWith<$Res> {
  _$FontStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FontStyleImplCopyWith<$Res>
    implements $FontStyleCopyWith<$Res> {
  factory _$$FontStyleImplCopyWith(
          _$FontStyleImpl value, $Res Function(_$FontStyleImpl) then) =
      __$$FontStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'links') Links links});

  @override
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$FontStyleImplCopyWithImpl<$Res>
    extends _$FontStyleCopyWithImpl<$Res, _$FontStyleImpl>
    implements _$$FontStyleImplCopyWith<$Res> {
  __$$FontStyleImplCopyWithImpl(
      _$FontStyleImpl _value, $Res Function(_$FontStyleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? links = null,
  }) {
    return _then(_$FontStyleImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FontStyleImpl implements _FontStyle {
  const _$FontStyleImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'links') required this.links});

  factory _$FontStyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$FontStyleImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'links')
  final Links links;

  @override
  String toString() {
    return 'FontStyle(name: $name, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FontStyleImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FontStyleImplCopyWith<_$FontStyleImpl> get copyWith =>
      __$$FontStyleImplCopyWithImpl<_$FontStyleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FontStyleImplToJson(
      this,
    );
  }
}

abstract class _FontStyle implements FontStyle {
  const factory _FontStyle(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'links') required final Links links}) = _$FontStyleImpl;

  factory _FontStyle.fromJson(Map<String, dynamic> json) =
      _$FontStyleImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'links')
  Links get links;
  @override
  @JsonKey(ignore: true)
  _$$FontStyleImplCopyWith<_$FontStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  @JsonKey(name: 'ttf')
  String get ttf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call({@JsonKey(name: 'ttf') String ttf});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ttf = null,
  }) {
    return _then(_value.copyWith(
      ttf: null == ttf
          ? _value.ttf
          : ttf // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksImplCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$LinksImplCopyWith(
          _$LinksImpl value, $Res Function(_$LinksImpl) then) =
      __$$LinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'ttf') String ttf});
}

/// @nodoc
class __$$LinksImplCopyWithImpl<$Res>
    extends _$LinksCopyWithImpl<$Res, _$LinksImpl>
    implements _$$LinksImplCopyWith<$Res> {
  __$$LinksImplCopyWithImpl(
      _$LinksImpl _value, $Res Function(_$LinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ttf = null,
  }) {
    return _then(_$LinksImpl(
      ttf: null == ttf
          ? _value.ttf
          : ttf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksImpl implements _Links {
  const _$LinksImpl({@JsonKey(name: 'ttf') required this.ttf});

  factory _$LinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksImplFromJson(json);

  @override
  @JsonKey(name: 'ttf')
  final String ttf;

  @override
  String toString() {
    return 'Links(ttf: $ttf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksImpl &&
            (identical(other.ttf, ttf) || other.ttf == ttf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ttf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      __$$LinksImplCopyWithImpl<_$LinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksImplToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  const factory _Links({@JsonKey(name: 'ttf') required final String ttf}) =
      _$LinksImpl;

  factory _Links.fromJson(Map<String, dynamic> json) = _$LinksImpl.fromJson;

  @override
  @JsonKey(name: 'ttf')
  String get ttf;
  @override
  @JsonKey(ignore: true)
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
