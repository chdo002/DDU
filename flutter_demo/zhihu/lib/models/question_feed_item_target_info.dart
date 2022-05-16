import 'package:json_annotation/json_annotation.dart';

part 'question_feed_item_target_info.g.dart';

@JsonSerializable()
class Question_feed_item_target_info {
  Question_feed_item_target_info();

  late num count;
  late List thumbnails;
  late String type;
  
  factory Question_feed_item_target_info.fromJson(Map<String,dynamic> json) => _$Question_feed_item_target_infoFromJson(json);
  Map<String, dynamic> toJson() => _$Question_feed_item_target_infoToJson(this);
}
