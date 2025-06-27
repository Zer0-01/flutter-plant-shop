import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_data_flows/data/model/product_dto_response.dart';

class ProductRepository {
  Future<ProductDtoResponse> getProducts() async {
    final response = await rootBundle.loadString('assets/json/products.json');
    final Map<String, dynamic> data = await jsonDecode(response);

    final productDtoResponse = ProductDtoResponse.fromJson(data);

    return productDtoResponse;
  }
}
