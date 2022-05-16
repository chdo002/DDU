import 'package:json_annotation/json_annotation.dart';
import "question_feed_item_target.dart";
part 'question_feed_item.g.dart';

@JsonSerializable()
class Question_feed_item {
  Question_feed_item();

  late String type;
  late String target_type;
  late Question_feed_item_target target;
  late bool skip_count;
  late num position;
  late String cursor;
  
  factory Question_feed_item.fromJson(Map<String,dynamic> json) => _$Question_feed_itemFromJson(json);
  Map<String, dynamic> toJson() => _$Question_feed_itemToJson(this);
}
