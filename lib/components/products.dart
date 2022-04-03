import 'package:flutter/material.dart';

import '../product.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Product(
            showDiscount: true,
            price: 00.00,
            productName: 'Product Service Title Product'),
        SizedBox(
          width: 2,
        ),
        Product(
            showDiscount: false,
            price: 00.00,
            productName: 'Product Service Title Product'),
        SizedBox(
          width: 2,
        ),
        Product(
            showDiscount: true,
            price: 00.00,
            productName: 'Product Service Title Product'),
      ],
    );
  }
}