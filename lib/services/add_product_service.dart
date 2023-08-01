import 'dart:convert';

import 'package:ecommerce/helper/API.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:flutter/cupertino.dart';

class AddProduct {
  Future<dynamic> Addproduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {

    Map<String, dynamic> response =
        await APi().post(url: "https://fakestoreapi.com/products", body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category
    });
  return ProductModel.fromjson(response);
  }

}
