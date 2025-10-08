import 'product.dart';

class ProductInCart {
  final Product product;
  int quantity;

  ProductInCart({required this.product, this.quantity = 1});
}
