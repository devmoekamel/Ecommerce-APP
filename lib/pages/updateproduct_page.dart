import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/services/get_category_products_service.dart';
import 'package:ecommerce/services/update_product_service.dart';
import 'package:ecommerce/utilities/custom_button.dart';
import 'package:ecommerce/utilities/textfield.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductPage extends StatefulWidget {
  static String id = 'UpdateProductPage';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? title, description, image;

  String? price;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Update Prodcut",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Textinput(color: Colors.black, hint: "title",
            onChanged:((data) {
              title =data;
            }),),
            SizedBox(
              height: 40,
            ),
            Textinput(color: Colors.black, hint: "description",
            onChanged:((data) {
              description =data;
            })
            ),
            SizedBox(
              height: 40,
            ),
            Textinput(color: Colors.black, hint: "image",
            onChanged:((data) {
              image =data;
            })),
            SizedBox(
              height: 40,
            ),
            Textinput(
              textInputType: TextInputType.number,
              color: Colors.black,
              hint: "price",
              onChanged: (data) {
                price = data;
              },
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Custom_Button(
                text: "update",
                onTap: () async{
                  setState(() {
                    isloading = true;
                  });
                    await updateproduct_method(product);

                  try {
                  }  catch (e) {
                    print(e);
                       setState(() {
                         isloading=false;
                       }); 
                  }

                  setState(() {
                    isloading = false;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }

 Future<void> updateproduct_method(ProductModel product) 
 async{
    await UpdateProduct().Updateproduct(
      id: product.id,
      category: product.category,
        title: title == null ? product.title : title!,
        price: price == null ? product.price : price!,
        description: description == null ? product.description : description!,
        image: image == null ? product.image : image!,
      
        );
  }
}
