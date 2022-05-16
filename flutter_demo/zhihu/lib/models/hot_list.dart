import 'package:json_annotation/json_annotation.dart';
import "hot_list_feed_item.dart";
part 'hot_list.g.dart';

@JsonSerializable()
class Hot_list {
  Hot_list();

  late List<Hot_list_feed_item> data;
  late String fresh_text;
  late num display_num;
  
  factory Hot_list.fromJson(Map<String,dynamic> json) => _$Hot_listFromJson(json);
  Map<String, dynamic> toJson() => _$Hot_listToJson(this);
}
