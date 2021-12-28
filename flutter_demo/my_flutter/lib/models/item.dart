import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  Item();

  late num pinActivitiesId;
  late num skuId;
  late num sku_id;
  late String coupleTitle;
  late String name;
  late num price;
  late num couplePrice;
  late num two_weeks_sales;
  late num productId;
  late num marketPrice;
  late num market_price;
  late String expiredDate;
  late String manufacturedDate;
  late num main_sku;
  late String skuPic;
  late String thumbnail;
  late num countLimit;
  late num endTime;
  late num showCountDownLimit;
  late bool canDelivery;
  late num merchant_id;
  late num merchant_type;
  late num left_stock;
  late num all_stock;
  late String link;
  late num selled_cnt;
  late String selled_cnt_text;
  late String month_selled;
  late String similarity_item_link;
  late num tb_sku_id;
  late num tb_item_id;
  late bool canBought;
  late bool onLine;
  late bool inStock;
  late Map<String,dynamic> atmosphere_info;
  late List tags;
  late String discount;
  late String expired_date_text_one;
  late String expired_date_text_two;
  
  factory Item.fromJson(Map<String,dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
