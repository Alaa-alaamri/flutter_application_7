import 'package:flutter/material.dart';
import 'package:flutter_application_7/model/product_model.dart';

class ProductDe extends StatelessWidget {
  
   ProductDe ({super.key, required this.product});
ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Description")
      ),
      body: Column(
        children: [
         Hero(tag: product.name!,child: Image.network(product.image!, width: 400, height: 400,)),
         Text(product.category!),
         Text(product.name!),
         Text(product.price!.toString())
        ],
      ),
    );
  }
}