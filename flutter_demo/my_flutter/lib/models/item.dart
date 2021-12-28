import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  Item();

  num? pinActivitiesId;
  num? skuId;
  num? sku_id;
  String? coupleTitle;
  String? name;
  num? price;
  num? couplePrice;
  num? two_weeks_sales;
  num? productId;
  num? marketPrice;
  num? market_price;
  String? expiredDate;
  String? manufacturedDate;
  num? main_sku;
  String? skuPic;
  String? thumbnail;
  num? countLimit;
  num? endTime;
  num? showCountDownLimit;
  bool? canDelivery;
  num? merchant_id;
  num? merchant_type;
  num? left_stock;
  num? all_stock;
  String? link;
  num? selled_cnt;
  String? selled_cnt_text;
  String? month_selled;
  String? similarity_item_link;
  num? tb_sku_id;
  num? tb_item_id;
  bool? canBought;
  bool? onLine;
  bool? inStock;
  Map<String,dynamic>? atmosphere_info;
  List? tags;
  String? discount;
  String? expired_date_text_one;
  String? expired_date_text_two;
  
  factory Item.fromJson(Map<String,dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
