import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items;

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItem(
    String ProductId,
    double Price,
    String Title,
  ) {
    if (_items.containsKey(ProductId)) {
      _items.update(
        ProductId,
        (existingItem) => CartItem(
          id: existingItem.id,
          title: existingItem.title,
          price: existingItem.price,
          quantity: existingItem.quantity +1 ,
        ),
      );
    } else {
      _items.putIfAbsent(
        ProductId,
        () => CartItem(
          id: DateTime.now().toString(),
          title: Title,
          price: Price,
          quantity: 1,
        ),
      );
    }
  }
}
