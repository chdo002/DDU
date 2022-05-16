// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question_feed _$Question_feedFromJson(Map<String, dynamic> json) =>
    Question_feed()
      ..data = (json['data'] as List<dynamic>)
          .map((e) => Question_feed_item.fromJson(e as Map<String, dynamic>))
          .toList()
      ..session = json['session'] as Map<String, dynamic>
      ..paging = json['paging'] as Map<String, dynamic>;

Map<String, dynamic> _$Question_feedToJson(Question_feed instance) =>
    <String, dynamic>{
      'data': instance.data,
      'session': instance.session,
      'paging': instance.paging,
    };
