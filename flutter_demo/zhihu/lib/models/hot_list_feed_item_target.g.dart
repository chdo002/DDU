// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_list_feed_item_target.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hot_list_feed_item_target _$Hot_list_feed_item_targetFromJson(
        Map<String, dynamic> json) =>
    Hot_list_feed_item_target()
      ..id = json['id'] as num
      ..title = json['title'] as String
      ..url = json['url'] as String
      ..type = json['type'] as String
      ..created = json['created'] as num
      ..answer_count = json['answer_count'] as num
      ..follower_count = json['follower_count'] as num
      ..author = json['author'] as Map<String, dynamic>
      ..bound_topic_ids = json['bound_topic_ids'] as List<dynamic>
      ..comment_count = json['comment_count'] as num
      ..is_following = json['is_following'] as bool
      ..excerpt = json['excerpt'] as String;

Map<String, dynamic> _$Hot_list_feed_item_targetToJson(
        Hot_list_feed_item_target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'type': instance.type,
      'created': instance.created,
      'answer_count': instance.answer_count,
      'follower_count': instance.follower_count,
      'author': instance.author,
      'bound_topic_ids': instance.bound_topic_ids,
      'comment_count': instance.comment_count,
      'is_following': instance.is_following,
      'excerpt': instance.excerpt,
    };
