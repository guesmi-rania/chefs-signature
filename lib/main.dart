import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'models/product_in_cart.dart'; // <- ajouter .dart

void main() {
  runApp(const ChefsSignatureApp());
}

class ChefsSignatureApp extends StatefulWidget {
  const ChefsSignatureApp({super.key});

  @override
  State<ChefsSignatureApp> createState() => _ChefsSignatureAppState();
}

class _ChefsSignatureAppState extends State<ChefsSignatureApp> {
  List<ProductInCart> cart = [];

  void addToCart(ProductInCart item) {
    setState(() {
      final index = cart.indexWhere((p) => p.product.id == item.product.id);
      if (index >= 0) {
        cart[index].quantity += item.quantity;
      } else {
        cart.add(item);
      }
    });
  }

  void removeFromCart(ProductInCart item) {
    setState(() {
      cart.removeWhere((p) => p.product.id == item.product.id);
    });
  }

  void updateQuantity(ProductInCart item, int quantity) {
    setState(() {
      final index = cart.indexWhere((p) => p.product.id == item.product.id);
      if (index >= 0) {
        cart[index].quantity = quantity;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chef's Signature",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(
        cart: cart,
        addToCart: addToCart,
        removeFromCart: removeFromCart, // si tu veux gérer le panier
        updateQuantity: updateQuantity, // si tu veux gérer les quantités
      ),
    );
  }
}
