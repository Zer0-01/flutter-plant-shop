// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDtoResponse _$ProductDtoResponseFromJson(Map<String, dynamic> json) =>
    ProductDtoResponse(
      data:
          (json['data'] as List<dynamic>)
              .map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ProductDtoResponseToJson(ProductDtoResponse instance) =>
    <String, dynamic>{'data': instance.data};

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  image: json['image'] as String,
  name: json['name'] as String,
  brand: json['brand'] as String,
  price: json['price'] as num,
  discount: json['discount'] as num?,
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'image': instance.image,
  'name': instance.name,
  'brand': instance.brand,
  'price': instance.price,
  'discount': instance.discount,
};
