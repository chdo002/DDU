// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_feed_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question_feed_item _$Question_feed_itemFromJson(Map<String, dynamic> json) =>
    Question_feed_item()
      ..type = json['type'] as String
      ..target_type = json['target_type'] as String
      ..target = Question_feed_item_target.fromJson(
          json['target'] as Map<String, dynamic>)
      ..skip_count = json['skip_count'] as bool
      ..position = json['position'] as num
      ..cursor = json['cursor'] as String;

Map<String, dynamic> _$Question_feed_itemToJson(Question_feed_item instance) =>
    <String, dynamic>{
      'type': instance.type,
      'target_type': instance.target_type,
      'target': instance.target,
      'skip_count': instance.skip_count,
      'position': instance.position,
      'cursor': instance.cursor,
    };
