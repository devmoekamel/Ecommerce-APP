import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/updateproduct_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: Homepage.id,
     routes: {
      Homepage.id :(context) => Homepage(),
      UpdateProductPage.id:(context) => UpdateProductPage()

       },
    
     );
    
  }
}
