import 'dart:convert';

import 'package:ecommerce/helper/API.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce/models/product_model.dart';

class ProductsOfCategory {
  Future<List<ProductModel>> Get_Products_Of_Category({required String categoryname}) async {
   
   

     List<dynamic> data = await APi().get(url:'https://fakestoreapi.com/products/category/$categoryname' );
      

      List<ProductModel> allproduct = [];

      for (int i = 0; i <= data.length; i++) {
        allproduct.add(ProductModel.fromjson(data[i]));
      }

      return allproduct;
   
  }
}
