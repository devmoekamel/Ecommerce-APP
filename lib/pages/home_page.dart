import 'package:ecommerce/helper/API.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/services/get_all_product_service.dart';
import 'package:ecommerce/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:http/http.dart' as http;

class Homepage extends StatelessWidget {
  static String id = 'HomePage';
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Ecommerce",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 56, left: 10, right: 10),
            child: FutureBuilder<List<ProductModel>>(
                future: GetAllProducts().get_allprducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> data = snapshot.data!;

                    return GridView.builder(
                      clipBehavior: Clip.none,
                      itemCount: data.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          mainAxisSpacing: 70),
                      itemBuilder: (context, index) {
                        return CardWidget(
                          product: data[index],
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }
}
