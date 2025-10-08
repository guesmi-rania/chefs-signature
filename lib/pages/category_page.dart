import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../widgets/product_card.dart';
import 'product_detail_page.dart';
import '../models/product_in_cart.dart';

class CategoryPage extends StatelessWidget {
  final String category;
  final List<ProductInCart> cart;
  final Function(ProductInCart) addToCart;

  CategoryPage({
    required this.category,
    required this.cart,
    required this.addToCart,
  });

  @override
  Widget build(BuildContext context) {
    final categoryProducts = products.where((p) => p.category == category).toList();

    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        itemCount: categoryProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7),
        itemBuilder: (context, index) {
          return ProductCard(
            product: categoryProducts[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductDetailPage(
                    product: categoryProducts[index],
                    cart: cart,
                    addToCart: addToCart,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
 