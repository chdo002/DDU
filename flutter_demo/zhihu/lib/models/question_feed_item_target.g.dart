// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_feed_item_target.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question_feed_item_target _$Question_feed_item_targetFromJson(
        Map<String, dynamic> json) =>
    Question_feed_item_target()
      ..answer_type = json['answer_type'] as String
      ..attached_info = json['attached_info'] as String
      ..author = json['author'] as Map<String, dynamic>
      ..comment_count = json['comment_count'] as num
      ..content_mark = json['content_mark'] as Map<String, dynamic>
      ..created_time = json['created_time'] as num
      ..decorative_labels = json['decorative_labels'] as List<dynamic>
      ..excerpt = json['excerpt'] as String
      ..extras = json['extras'] as String
      ..id = json['id'] as num
      ..is_collapsed = json['is_collapsed'] as bool
      ..is_copyable = json['is_copyable'] as bool
      ..is_mine = json['is_mine'] as bool
      ..is_sticky = json['is_sticky'] as bool
      ..is_visible = json['is_visible'] as bool
      ..question = json['question'] as Map<String, dynamic>
      ..relationship = json['relationship'] as Map<String, dynamic>
      ..relevant_info = json['relevant_info'] as Map<String, dynamic>
      ..sticky_info = json['sticky_info'] as String
      ..thanks_count = json['thanks_count'] as num
      ..thumbnail_info = Question_feed_item_target_info.fromJson(
          json['thumbnail_info'] as Map<String, dynamic>)
      ..type = json['type'] as String
      ..updated_time = json['updated_time'] as num
      ..url = json['url'] as String
      ..visible_only_to_author = json['visible_only_to_author'] as bool
      ..voteup_count = json['voteup_count'] as num
      ..zhi_plus_extra_info = json['zhi_plus_extra_info'] as String;

Map<String, dynamic> _$Question_feed_item_targetToJson(
        Question_feed_item_target instance) =>
    <String, dynamic>{
      'answer_type': instance.answer_type,
      'attached_info': instance.attached_info,
      'author': instance.author,
      'comment_count': instance.comment_count,
      'content_mark': instance.content_mark,
      'created_time': instance.created_time,
      'decorative_labels': instance.decorative_labels,
      'excerpt': instance.excerpt,
      'extras': instance.extras,
      'id': instance.id,
      'is_collapsed': instance.is_collapsed,
      'is_copyable': instance.is_copyable,
      'is_mine': instance.is_mine,
      'is_sticky': instance.is_sticky,
      'is_visible': instance.is_visible,
      'question': instance.question,
      'relationship': instance.relationship,
      'relevant_info': instance.relevant_info,
      'sticky_info': instance.sticky_info,
      'thanks_count': instance.thanks_count,
      'thumbnail_info': instance.thumbnail_info,
      'type': instance.type,
      'updated_time': instance.updated_time,
      'url': instance.url,
      'visible_only_to_author': instance.visible_only_to_author,
      'voteup_count': instance.voteup_count,
      'zhi_plus_extra_info': instance.zhi_plus_extra_info,
    };
