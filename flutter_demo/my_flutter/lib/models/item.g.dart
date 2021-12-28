// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item()
  ..pinActivitiesId = json['pinActivitiesId'] as num
  ..skuId = json['skuId'] as num
  ..sku_id = json['sku_id'] as num
  ..coupleTitle = json['coupleTitle'] as String
  ..name = json['name'] as String
  ..price = json['price'] as num
  ..couplePrice = json['couplePrice'] as num
  ..two_weeks_sales = json['two_weeks_sales'] as num
  ..productId = json['productId'] as num
  ..marketPrice = json['marketPrice'] as num
  ..market_price = json['market_price'] as num
  ..expiredDate = json['expiredDate'] as String
  ..manufacturedDate = json['manufacturedDate'] as String
  ..main_sku = json['main_sku'] as num
  ..skuPic = json['skuPic'] as String
  ..thumbnail = json['thumbnail'] as String
  ..countLimit = json['countLimit'] as num
  ..endTime = json['endTime'] as num
  ..showCountDownLimit = json['showCountDownLimit'] as num
  ..canDelivery = json['canDelivery'] as bool
  ..merchant_id = json['merchant_id'] as num
  ..merchant_type = json['merchant_type'] as num
  ..left_stock = json['left_stock'] as num
  ..all_stock = json['all_stock'] as num
  ..link = json['link'] as String
  ..selled_cnt = json['selled_cnt'] as num
  ..selled_cnt_text = json['selled_cnt_text'] as String
  ..month_selled = json['month_selled'] as String
  ..similarity_item_link = json['similarity_item_link'] as String
  ..tb_sku_id = json['tb_sku_id'] as num
  ..tb_item_id = json['tb_item_id'] as num
  ..canBought = json['canBought'] as bool
  ..onLine = json['onLine'] as bool
  ..inStock = json['inStock'] as bool
  ..atmosphere_info = json['atmosphere_info'] as Map<String, dynamic>
  ..tags = json['tags'] as List<dynamic>
  ..discount = json['discount'] as String
  ..expired_date_text_one = json['expired_date_text_one'] as String
  ..expired_date_text_two = json['expired_date_text_two'] as String;

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'pinActivitiesId': instance.pinActivitiesId,
      'skuId': instance.skuId,
      'sku_id': instance.sku_id,
      'coupleTitle': instance.coupleTitle,
      'name': instance.name,
      'price': instance.price,
      'couplePrice': instance.couplePrice,
      'two_weeks_sales': instance.two_weeks_sales,
      'productId': instance.productId,
      'marketPrice': instance.marketPrice,
      'market_price': instance.market_price,
      'expiredDate': instance.expiredDate,
      'manufacturedDate': instance.manufacturedDate,
      'main_sku': instance.main_sku,
      'skuPic': instance.skuPic,
      'thumbnail': instance.thumbnail,
      'countLimit': instance.countLimit,
      'endTime': instance.endTime,
      'showCountDownLimit': instance.showCountDownLimit,
      'canDelivery': instance.canDelivery,
      'merchant_id': instance.merchant_id,
      'merchant_type': instance.merchant_type,
      'left_stock': instance.left_stock,
      'all_stock': instance.all_stock,
      'link': instance.link,
      'selled_cnt': instance.selled_cnt,
      'selled_cnt_text': instance.selled_cnt_text,
      'month_selled': instance.month_selled,
      'similarity_item_link': instance.similarity_item_link,
      'tb_sku_id': instance.tb_sku_id,
      'tb_item_id': instance.tb_item_id,
      'canBought': instance.canBought,
      'onLine': instance.onLine,
      'inStock': instance.inStock,
      'atmosphere_info': instance.atmosphere_info,
      'tags': instance.tags,
      'discount': instance.discount,
      'expired_date_text_one': instance.expired_date_text_one,
      'expired_date_text_two': instance.expired_date_text_two,
    };
