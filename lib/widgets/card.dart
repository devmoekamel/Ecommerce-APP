import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/pages/updateproduct_page.dart';
import 'package:ecommerce/services/update_product_service.dart';
import 'package:flutter/material.dart';


class CardWidget extends StatelessWidget {

  ProductModel product ;
  CardWidget({required this.product});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,UpdateProductPage.id ,arguments: product);
              },
      child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 150,
              width: 230,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0,
                    offset: Offset(10, 10))
              ]),
              child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.title.substring(0,7),
                            style: TextStyle(color: Colors.grey,),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                product.price.toString(),
                                style: TextStyle(color: Colors.black),
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            ],
                          )
                        ]),
                  )),
            ),
            Positioned(
              top: -50,
              right: 30,
              child: Container(
                  child: Image.network(
                product.image,
                height: 100,
                width: 70,
              )),
            ),
          ],
        ),
    );
  }
}