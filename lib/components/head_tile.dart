import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HeadTile extends StatelessWidget {
  const HeadTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#f3f3f3"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'HEAD TIL 1',
              style: TextStyle(
                color: HexColor("#8c8c8c"),
              ),
            ),
            Text(
              'HEAD TIL 2',
              style: TextStyle(
                color: HexColor("#8c8c8c"),
              ),
            ),
            Text(
              'HEAD TIL 3',
              style: TextStyle(
                color: HexColor("#8c8c8c"),
              ),
            ),
            Text(
              'HEAD TIL 4',
              style: TextStyle(
                color: HexColor("#8c8c8c"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}