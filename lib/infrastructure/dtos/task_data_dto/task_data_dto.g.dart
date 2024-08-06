// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskDataDtoImpl _$$TaskDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$TaskDataDtoImpl(
      customizationSettings: (json['customization_settings'] as List<dynamic>)
          .map((e) => CustomizationSetting.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: json['media'] as String,
    );

Map<String, dynamic> _$$TaskDataDtoImplToJson(_$TaskDataDtoImpl instance) =>
    <String, dynamic>{
      'customization_settings': instance.customizationSettings,
      'media': instance.media,
    };

_$CustomizationSettingImpl _$$CustomizationSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomizationSettingImpl(
      order: (json['order'] as num).toInt(),
      configs: Configs.fromJson(json['configs'] as Map<String, dynamic>),
      title: json['title'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$CustomizationSettingImplToJson(
        _$CustomizationSettingImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'configs': instance.configs,
      'title': instance.title,
      'value': instance.value,
    };

_$ConfigsImpl _$$ConfigsImplFromJson(Map<String, dynamic> json) =>
    _$ConfigsImpl(
      top: (json['top'] as num).toInt(),
      left: (json['left'] as num).toInt(),
      fontSize: (json['font_size'] as num).toInt(),
      allignment:
          Allignment.fromJson(json['allignment'] as Map<String, dynamic>),
      dimensions: json['dimensions'] == null
          ? null
          : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
      fontColor: json['font_color'] as String,
      fontStyle: FontStyle.fromJson(json['font_style'] as Map<String, dynamic>),
      fontWeight:
          Allignment.fromJson(json['font_weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConfigsImplToJson(_$ConfigsImpl instance) =>
    <String, dynamic>{
      'top': instance.top,
      'left': instance.left,
      'font_size': instance.fontSize,
      'allignment': instance.allignment,
      'dimensions': instance.dimensions,
      'font_color': instance.fontColor,
      'font_style': instance.fontStyle,
      'font_weight': instance.fontWeight,
    };

_$AllignmentImpl _$$AllignmentImplFromJson(Map<String, dynamic> json) =>
    _$AllignmentImpl(
      text: json['text'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$AllignmentImplToJson(_$AllignmentImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

_$DimensionsImpl _$$DimensionsImplFromJson(Map<String, dynamic> json) =>
    _$DimensionsImpl(
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$$DimensionsImplToJson(_$DimensionsImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };

_$FontStyleImpl _$$FontStyleImplFromJson(Map<String, dynamic> json) =>
    _$FontStyleImpl(
      name: json['name'] as String,
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FontStyleImplToJson(_$FontStyleImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'links': instance.links,
    };

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      ttf: json['ttf'] as String,
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
    <String, dynamic>{
      'ttf': instance.ttf,
    };
