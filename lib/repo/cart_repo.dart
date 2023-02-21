import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CartRepo {
  Future<Response> getJson() async {
    final String jsonData =
        await rootBundle.loadString('assets/json/cart_item.json');
    final Response response = await jsonDecode(jsonData);
    if (response.body != null) {
      return response;
    } else {
      return const Response(statusCode: 1);
    }
  }
}
