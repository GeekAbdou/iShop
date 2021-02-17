import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';
import '../dummy_products.dart';

class ProductItem extends StatelessWidget{
  final String id;
  final String title;
  final String imageUrl;
  ProductItem(this.id,this.title,this.imageUrl);

  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
            arguments: id,
          );
        },
        child: GridTile(
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
                color: Theme.of(context).accentColor,
              ),
              trailing: IconButton(
                icon : Icon(
                    Icons.shopping_cart
                ),
                onPressed: () {},
                color: Theme.of(context).accentColor,
              ),
              backgroundColor: Colors.black45,
              title: Text(
                title,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}