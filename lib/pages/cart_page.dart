import 'package:flutter/material.dart';
import '../models/product_in_cart.dart';

class CartPage extends StatelessWidget {
  final List<ProductInCart> cart;
  final Function(ProductInCart) addToCart;
  final Function(ProductInCart) removeFromCart; // ✅ Ajouter
  final Function(ProductInCart, int) updateQuantity; // ✅ Ajouter

  const CartPage({
    Key? key,
    required this.cart,
    required this.addToCart,
    required this.removeFromCart, // ✅ Ajouter
    required this.updateQuantity, // ✅ Ajouter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Panier")),
      body: cart.isEmpty
          ? Center(child: Text("Votre panier est vide"))
          : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                final item = cart[index];
                return ListTile(
                  leading: Image.network(item.product.imageUrl),
                  title: Text(item.product.name),
                  subtitle: Text("${item.quantity} x ${item.product.price} DT"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () => updateQuantity(item, item.quantity - 1),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () => updateQuantity(item, item.quantity + 1),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => removeFromCart(item),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
