import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TitleCategories extends StatelessWidget {
  const TitleCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: HexColor("#fec3ca"),
                  width: 2,
                ),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            Text(
              '@_user ${index + 1}',
              style: TextStyle(color: HexColor("#bebebe")),
            ),
          ],
        ),
      ),
    );
  }
}
