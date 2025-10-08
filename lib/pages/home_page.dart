import 'package:flutter/material.dart';
import '../widgets/category_card.dart';
import '../widgets/product_card.dart';
import '../widgets/slider_widget.dart';
import '../data/sample_data.dart';
import 'category_page.dart';
import 'product_detail_page.dart';
import 'cart_page.dart';
import '../models/product_in_cart.dart';

class HomePage extends StatelessWidget {
  final List<ProductInCart> cart;
  final Function(ProductInCart) addToCart;
  final Function(ProductInCart) removeFromCart;
  final Function(ProductInCart, int) updateQuantity;

  const HomePage({
    Key? key,
    required this.cart,
    required this.addToCart,
    required this.removeFromCart,
    required this.updateQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SliderItem> sliderItems = [
      SliderItem(
        imageUrl: 'https://i.postimg.cc/x89LK7kH/candy-bar-decorated-by-delicious-sweet-buffet-with-cupcakes-other-dessertscandieshappy-birthday-conc.jpg ',
        title: 'Voir nos Sweets',
        subtitle: 'Découvrez nos nouveautés',
        onPressed: () {},
      ),
      SliderItem(
        imageUrl: 'https://i.postimg.cc/3N6pPwSC/many-different-desserts.jpg',
        title: 'Gâteaux à ne pas manquer',
        subtitle: 'Offres spéciales',
        onPressed: () {},
      ),
      SliderItem(
        imageUrl: 'https://i.postimg.cc/Z563M4rS/sweets-cakes-counter.jpg',
        title: 'Nos douceurs préférées',
        subtitle: 'À ne pas manquer',
        onPressed: () {},
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chef's Signature"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CartPage(
                    cart: cart,
                    addToCart: addToCart,
                    removeFromCart: removeFromCart,
                    updateQuantity: updateQuantity,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderWidget(items: sliderItems),
            const SizedBox(height: 20),

            // --- CATÉGORIES ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Catégories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CategoryCard(
                      category: categories[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CategoryPage(
                              category: categories[index],
                              cart: cart,
                              addToCart: addToCart,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // --- PRODUITS POPULAIRES ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Produits populaires",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                return ProductCard(
                  product: products[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductDetailPage(
                          product: products[index],
                          cart: cart,
                          addToCart: addToCart,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
