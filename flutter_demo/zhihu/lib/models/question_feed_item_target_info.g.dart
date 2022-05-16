// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_feed_item_target_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question_feed_item_target_info _$Question_feed_item_target_infoFromJson(
        Map<String, dynamic> json) =>
    Question_feed_item_target_info()
      ..count = json['count'] as num
      ..thumbnails = json['thumbnails'] as List<dynamic>
      ..type = json['type'] as String;

Map<String, dynamic> _$Question_feed_item_target_infoToJson(
        Question_feed_item_target_info instance) =>
    <String, dynamic>{
      'count': instance.count,
      'thumbnails': instance.thumbnails,
      'type': instance.type,
    };
