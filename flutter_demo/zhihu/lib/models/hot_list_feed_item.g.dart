// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_list_feed_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hot_list_feed_item _$Hot_list_feed_itemFromJson(Map<String, dynamic> json) =>
    Hot_list_feed_item()
      ..type = json['type'] as String
      ..style_type = json['style_type'] as String
      ..id = json['id'] as String
      ..card_id = json['card_id'] as String
      ..target = Hot_list_feed_item_target.fromJson(
          json['target'] as Map<String, dynamic>)
      ..attached_info = json['attached_info'] as String
      ..detail_text = json['detail_text'] as String
      ..trend = json['trend'] as num
      ..debut = json['debut'] as bool
      ..children = json['children'] as List<dynamic>;

Map<String, dynamic> _$Hot_list_feed_itemToJson(Hot_list_feed_item instance) =>
    <String, dynamic>{
      'type': instance.type,
      'style_type': instance.style_type,
      'id': instance.id,
      'card_id': instance.card_id,
      'target': instance.target,
      'attached_info': instance.attached_info,
      'detail_text': instance.detail_text,
      'trend': instance.trend,
      'debut': instance.debut,
      'children': instance.children,
    };
