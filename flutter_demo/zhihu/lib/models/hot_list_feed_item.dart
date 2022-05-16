import 'package:json_annotation/json_annotation.dart';
import "hot_list_feed_item_target.dart";
part 'hot_list_feed_item.g.dart';

@JsonSerializable()
class Hot_list_feed_item {
  Hot_list_feed_item();

  late String type;
  late String style_type;
  late String id;
  late String card_id;
  late Hot_list_feed_item_target target;
  late String attached_info;
  late String detail_text;
  late num trend;
  late bool debut;
  late List children;
  
  factory Hot_list_feed_item.fromJson(Map<String,dynamic> json) => _$Hot_list_feed_itemFromJson(json);
  Map<String, dynamic> toJson() => _$Hot_list_feed_itemToJson(this);
}
