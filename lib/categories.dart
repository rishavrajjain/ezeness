import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 120,
                color: HexColor("#f5f8f9"),
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) => Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: HexColor("#222a2f"),
              child: const FaIcon(
                FontAwesomeIcons.layerGroup,
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                const Text('Main'),
                Text('Category${index+1}'),
              ],
            )
          ],
        ),
      ),
    )
                ),
              );
  }
}
