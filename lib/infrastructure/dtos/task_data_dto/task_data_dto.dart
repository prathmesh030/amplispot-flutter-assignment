// To parse this JSON data, do
//
//     final taskDataDto = taskDataDtoFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'task_data_dto.freezed.dart';
part 'task_data_dto.g.dart';

TaskDataDto taskDataDtoFromJson(String str) => TaskDataDto.fromJson(json.decode(str));

String taskDataDtoToJson(TaskDataDto data) => json.encode(data.toJson());

@freezed
class TaskDataDto with _$TaskDataDto {
    const factory TaskDataDto({
        @JsonKey(name: 'customization_settings')
        required List<CustomizationSetting> customizationSettings,
        @JsonKey(name: 'media')
        required String media,
    }) = _TaskDataDto;

    factory TaskDataDto.fromJson(Map<String, dynamic> json) => _$TaskDataDtoFromJson(json);
}

@freezed
class CustomizationSetting with _$CustomizationSetting {
    const factory CustomizationSetting({
        @JsonKey(name: 'order')
        required int order,
        @JsonKey(name: 'configs')
        required Configs configs,
        @JsonKey(name: 'title')
        required String title,
        @JsonKey(name: 'value')
        required String value,
    }) = _CustomizationSetting;

    factory CustomizationSetting.fromJson(Map<String, dynamic> json) => _$CustomizationSettingFromJson(json);
}

@freezed
class Configs with _$Configs {
    const factory Configs({
        @JsonKey(name: 'top')
        required int top,
        @JsonKey(name: 'left')
        required int left,
        @JsonKey(name: 'font_size')
        required int fontSize,
        @JsonKey(name: 'allignment')
        required Allignment allignment,
        @JsonKey(name: 'dimensions')
        Dimensions? dimensions,
        @JsonKey(name: 'font_color')
        required String fontColor,
        @JsonKey(name: 'font_style')
        required FontStyle fontStyle,
        @JsonKey(name: 'font_weight')
        required Allignment fontWeight,
    }) = _Configs;

    factory Configs.fromJson(Map<String, dynamic> json) => _$ConfigsFromJson(json);
}

@freezed
class Allignment with _$Allignment {
    const factory Allignment({
        @JsonKey(name: 'text')
        required String text,
        @JsonKey(name: 'value')
        required String value,
    }) = _Allignment;

    factory Allignment.fromJson(Map<String, dynamic> json) => _$AllignmentFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
    const factory Dimensions({
        @JsonKey(name: 'width')
        required int width,
        @JsonKey(name: 'height')
        required int height,
    }) = _Dimensions;

    factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);
}

@freezed
class FontStyle with _$FontStyle {
    const factory FontStyle({
        @JsonKey(name: 'name')
        required String name,
        @JsonKey(name: 'links')
        required Links links,
    }) = _FontStyle;

    factory FontStyle.fromJson(Map<String, dynamic> json) => _$FontStyleFromJson(json);
}

@freezed
class Links with _$Links {
    const factory Links({
        @JsonKey(name: 'ttf')
        required String ttf,
    }) = _Links;

    factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
