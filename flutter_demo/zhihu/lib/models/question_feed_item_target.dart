import 'package:json_annotation/json_annotation.dart';
import "question_feed_item_target_info.dart";
part 'question_feed_item_target.g.dart';

@JsonSerializable()
class Question_feed_item_target {
  Question_feed_item_target();

  late String answer_type;
  late String attached_info;
  late Map<String,dynamic> author;
  late num comment_count;
  late Map<String,dynamic> content_mark;
  late num created_time;
  late List decorative_labels;
  late String excerpt;
  late String extras;
  late num id;
  late bool is_collapsed;
  late bool is_copyable;
  late bool is_mine;
  late bool is_sticky;
  late bool is_visible;
  late Map<String,dynamic> question;
  late Map<String,dynamic> relationship;
  late Map<String,dynamic> relevant_info;
  late String sticky_info;
  late num thanks_count;
  late Question_feed_item_target_info thumbnail_info;
  late String type;
  late num updated_time;
  late String url;
  late bool visible_only_to_author;
  late num voteup_count;
  late String zhi_plus_extra_info;
  
  factory Question_feed_item_target.fromJson(Map<String,dynamic> json) => _$Question_feed_item_targetFromJson(json);
  Map<String, dynamic> toJson() => _$Question_feed_item_targetToJson(this);
}
