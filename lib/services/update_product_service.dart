import 'package:ecommerce/helper/API.dart';
import 'package:ecommerce/models/product_model.dart';

class UpdateProduct{


  Future<dynamic> Updateproduct({
    required String title,
      required String price,
      required String description,
      required String category,
      required String image,
      required int id,
      })
async  {
    print("updating for product with id = ${id}}");
     Map<String,dynamic> response= await  APi().Put(
      url:"https://fakestoreapi.com/products/$id" , body:{
      "title": title,
      "price": price,
      "description": description,
      "category":category,
      "image": image,
      
    } );


  return ProductModel.fromjson(response);

  }


}