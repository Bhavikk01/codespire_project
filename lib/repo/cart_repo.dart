import 'dart:convert';

import 'package:codespire_app/models/product_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CartRepo {
  Future<Response> getJson() async {
    final String jsonData =
        await rootBundle.loadString('assets/json/cart_item.json');
    final Response response = await jsonDecode(jsonData);
    if (response != null) {
      return response;
    } else {
      return Response(statusCode: 1);
    }
  }
}
