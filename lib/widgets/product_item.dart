import 'package:flutter/material.dart';
import 'package:ishop/dummy_products.dart';

class ProductItem extends StatelessWidget{
  final String id;
  final String title;
  final String imageUrl;
  ProductItem(this.id,this.title,this.imageUrl);

  @override
  Widget build(BuildContext context){
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: Container(
        height: 40,
        child: GridTileBar(
          leading: IconButton(
            icon: Icon(
                Icons.favorite,
            ),
            onPressed: () {},
          ),
          trailing: IconButton(
            icon : Icon(
                Icons.shopping_cart
            ),
            onPressed: () {},
          ),
          backgroundColor: Colors.black45,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}