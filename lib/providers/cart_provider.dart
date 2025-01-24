import 'package:app/models/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];

  List<Product> get cart => _cart;

  // Add item to the cart or update quantity if item is already in the cart
  void toggleFavourite(Product product) {
    bool exists = false;

    for (var element in _cart) {
      if (element == product) {  // Use reference equality instead of an ID check
        element.quantity++;
        exists = true;
        break;
      }
    }

    if (!exists) {
      _cart.add(product);
    }

    notifyListeners(); // Notify listeners after change
  }

  // Increment quantity of product at the given index
  void increamentQnt(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  // Decrement quantity of product at the given index
  void decrementQnt(int index) {
    if (_cart[index].quantity > 0) {
      _cart[index].quantity--;
    }
    notifyListeners(); // Notify listeners after change
  }

  // Calculate the total price of items in the cart
  double totalPrice() {
    double total = 0.0;
    for (Product element in _cart) {
      total += element.price * element.quantity;
    }
    return total;
  }

  // Static method to get the CartProvider instance from context
  static CartProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
