import 'package:json_annotation/json_annotation.dart';

part 'product_dto_response.g.dart';

@JsonSerializable()
class ProductDtoResponse {
  final List<Product> data;

  ProductDtoResponse({required this.data});

  factory ProductDtoResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProductDtoResponseToJson(this);
}

@JsonSerializable()
class Product {
  final String image;
  final String name;
  final String brand;
  final num price;
  final num? discount;

  Product({
    required this.image,
    required this.name,
    required this.brand,
    required this.price,
    this.discount,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
