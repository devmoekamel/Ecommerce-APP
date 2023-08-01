
import 'dart:convert';

import 'package:ecommerce/helper/API.dart';
import 'package:http/http.dart' as http;




class AllCategoryService
{

   Future <List<dynamic>>  get_allcategories()
   async{

      List<dynamic> data =   await APi().get(url:"https://fakestoreapi.com/products/categories" );
      
  
        return data;
    
   
   }










}