import 'package:flutter/material.dart';
import './screens/products_overview_screen.dart';
import 'screens/product_detail_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iShop',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.orange,
        backgroundColor: Colors.white70,
        fontFamily: 'Lato',
      ),
      home: ProductOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName : (ctx) => ProductDetailScreen(),
      },
    );
  }
}

