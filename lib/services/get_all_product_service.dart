
import 'dart:convert';

import 'package:ecommerce/helper/API.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class GetAllProducts
{

 Future<List<ProductModel>> get_allprducts()
  async{


      List<dynamic> data = await APi().get(url: "https://fakestoreapi.com/products");

  
    List<ProductModel> allproduct = [];
  
    for(int i = 0 ; i<data.length;i++)
    {
     allproduct.add(ProductModel.fromjson(data[i]));
    }
    
    return allproduct;

  
  }





}