import 'package:flutter/material.dart';
import '../dummy_products.dart';
import '../widgets/product_item.dart';
import '../models/product.dart';
class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          'iShop'
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx,i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2 ,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2/3,
        ),
      ),
    );
  }
}
