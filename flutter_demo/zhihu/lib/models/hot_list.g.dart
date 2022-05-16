// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hot_list _$Hot_listFromJson(Map<String, dynamic> json) => Hot_list()
  ..data = (json['data'] as List<dynamic>)
      .map((e) => Hot_list_feed_item.fromJson(e as Map<String, dynamic>))
      .toList()
  ..fresh_text = json['fresh_text'] as String
  ..display_num = json['display_num'] as num;

Map<String, dynamic> _$Hot_listToJson(Hot_list instance) => <String, dynamic>{
      'data': instance.data,
      'fresh_text': instance.fresh_text,
      'display_num': instance.display_num,
    };
