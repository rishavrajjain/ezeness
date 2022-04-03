import 'package:flutter/material.dart';
import 'package:flutter_shop_application/components/app_logo.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#fafafa"),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Logo(
              color: Colors.black,
            ),
            Container(
              color: HexColor("#ffffff"),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Text(
                    'Search',
                    style: TextStyle(
                      color: HexColor("#c6c6c6"),
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  const Icon(Icons.headphones),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.qr_code)
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}