import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Product extends StatelessWidget {
  final bool showDiscount;
  final double price;
  final String productName;
  const Product({
    Key? key,
    required this.showDiscount,
    required this.price,
    required this.productName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#fafafa"),
      width: (MediaQuery.of(context).size.width / 3) - 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                color: HexColor("#fafafa"),
                height: 200,
                child: Image.network(
                  'https://thumbs.dreamstime.com/b/positive-man-enjoying-shopping-happy-man-shopping-bags-isolated-white-excited-happy-man-doing-online-shopping-thanks-150853335.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: HexColor("#e1d9d9"),
                ),
              ),
              Positioned(
                right: 5,
                bottom: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      '3 Km',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 5,
                bottom: 2,
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 0, showDiscount ? 8 : 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showDiscount)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price.toString() + '/-',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: HexColor("#a3a2a1"),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            '00%',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                Text(
                  price.toString() + '/-',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(productName),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
