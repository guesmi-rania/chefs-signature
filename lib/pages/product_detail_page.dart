import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/product_in_cart.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  final List<ProductInCart> cart;
  final Function(ProductInCart) addToCart;

  ProductDetailPage({required this.product, required this.cart, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(product.imageUrl, height: 200, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(product.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(product.description),
            SizedBox(height: 16),
            Text('${product.price.toStringAsFixed(2)} DT', style: TextStyle(fontSize: 20, color: Colors.pink)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                addToCart(ProductInCart(product: product, quantity: 1));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Ajouté au panier')));
              },
              child: Text("Ajouter au panier"),
            ),
          ],
        ),
      ),
    );
  }
}
