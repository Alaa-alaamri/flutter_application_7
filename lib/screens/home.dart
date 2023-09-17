import 'package:flutter/material.dart';
import 'package:flutter_application_7/model/product_model.dart';
import 'package:flutter_application_7/screens/product.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  List <ProductModel> products= [ProductModel(category:"shose", name: "NIKE Air Jordan ", price: 130.0, image: "https://www.story.capetown/cdn/shop/products/Jordan1MidSplitBlackWhite_W_-DR0501-1011.png?v=1663233454"),
  ProductModel(category:"shose", name: "NIKE Air force", price: 150.00, image: "https://images.stockx.com/images/Nike-Air-Force-1-Low-Pivot-Point-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1645115857" ),
  ProductModel(category: "shose", name: "NIKE Dunk 1985", price: 140.400, image: "https://i8.amplience.net/i/jpl/fp_649617_a?qlt=92"),
  ProductModel(category: "shose", name: "NIKE+ Billie Eilish Air Force", price: 105.2, image: "https://www.datocms-assets.com/24293/1678438080-billie-eilish-x-nike-air-force-1-low-triple-white-release-heat-mvmntfinal-1png-edited.png?fm=jpg&max-h=420&max-w=645")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("products"), actions: [Icon(Icons.search),Icon(Icons.view_sidebar)]),
      body: ListView.builder(itemBuilder: (context, index){
        return ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder:
             (context) => ProductDe( product :products[index])

            )
            );
          },
          leading: Hero(
            tag: products[index].name!,
            child: Image.network(
              products[index].image!,
              width: 50,
              height: 50,
            ),
          ),
          title: Text(products[index].name!),
          subtitle: Text(products[index].category!),
          trailing: Text(products[index].price!.toString()),
        );
      },
      itemCount: products.length,
      ),
      
    );
  }
}