import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import './cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({
    @required this.id,
    @required this.amount,
    @required this.products,
    @required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  Future<void> addOrder(List<CartItem> cartProducts, double total) async {
    const url =
        'https://ishop-fire-base-default-rtdb.firebaseio.com/orders.json';
    final timestamp = DateTime.now();

    final response = await http.post(
      url,
      body: json.encode(
        {
          'amount': total,
          'datatime': timestamp.toIso8601String(),
          'products': cartProducts
              .map((cartprod) => {
                    'id': cartprod.id,
                    'title': cartprod.title,
                    'quantity': cartprod.quantity,
                    'price': cartprod.price,
                  })
              .toList(),
        },
      ),
    );

    _orders.insert(
      0,
      OrderItem(
        id: json.decode(response.body)['name'],
        amount: total,
        dateTime: timestamp,
        products: cartProducts,
      ),
    );
    notifyListeners();
  }
}
