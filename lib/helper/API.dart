import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class APi {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "there's a problem with status code ${response.statusCode}");
    }
  }

  Future<dynamic> post({required String url, @required dynamic body}) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      // headers: {
      //   "Content-Type":"application/x-www-form-urlencoded",
      //   "Accept":"application/json",

      // }
    );

    if (response.statusCode == 200) {
      print(response.body);
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "there's a problem with status code ${response.statusCode} or body : ${body}");
    }
  }

  Future<dynamic> Put({required String url, @required dynamic body}) async {

    http.Response response = await http.put(
      Uri.parse(url),
      body: body,
      // headers: {
      //     'Content-type': 'multipart/form-data',
      //   }
    );
    if (response.statusCode == 200) {

    Map<String,dynamic> updated_data= jsonDecode(response.body);

        print("prodcut after updating ->>${updated_data}");

      return updated_data ;
    } else {
      throw Exception(
          "there's a problem with status code ${response.statusCode} or body : ${body}");
    }
    // print(response.body);
    // return jsonDecode(response.body);
  }
}
