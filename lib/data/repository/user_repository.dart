import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_data_flows/data/model/user_dto_response.dart';

class UserRepository {
  Future<UserDtoResponse> getUser() async {
    final response = await rootBundle.loadString('assets/json/user.json');
    final Map<String, dynamic> data = await jsonDecode(response);

    final UserDtoResponse userDtoResponse = UserDtoResponse.fromJson(data);
    return userDtoResponse;
  }
}
