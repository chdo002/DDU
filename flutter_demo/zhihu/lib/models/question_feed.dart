import 'package:json_annotation/json_annotation.dart';
import "question_feed_item.dart";
part 'question_feed.g.dart';

@JsonSerializable()
class Question_feed {
  Question_feed();

  late List<Question_feed_item> data;
  late Map<String,dynamic> session;
  late Map<String,dynamic> paging;
  
  factory Question_feed.fromJson(Map<String,dynamic> json) => _$Question_feedFromJson(json);
  Map<String, dynamic> toJson() => _$Question_feedToJson(this);
}
