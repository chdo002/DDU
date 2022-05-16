import 'package:json_annotation/json_annotation.dart';

part 'hot_list_feed_item_target.g.dart';

@JsonSerializable()
class Hot_list_feed_item_target {
  Hot_list_feed_item_target();

  late num id;
  late String title;
  late String url;
  late String type;
  late num created;
  late num answer_count;
  late num follower_count;
  late Map<String,dynamic> author;
  late List bound_topic_ids;
  late num comment_count;
  late bool is_following;
  late String excerpt;
  
  factory Hot_list_feed_item_target.fromJson(Map<String,dynamic> json) => _$Hot_list_feed_item_targetFromJson(json);
  Map<String, dynamic> toJson() => _$Hot_list_feed_item_targetToJson(this);
}
