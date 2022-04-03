import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'app_logo.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'TERM OF USE',
                style: TextStyle(
                  color: HexColor("#8c8c8c"),
                ),
              ),
              Text(
                'CONTACT',
                style: TextStyle(
                  color: HexColor("#8c8c8c"),
                ),
              ),
              Text(
                'CAREER',
                style: TextStyle(
                  color: HexColor("#8c8c8c"),
                ),
              ),
              Text(
                'AREA RANGE',
                style: TextStyle(
                  color: HexColor("#8c8c8c"),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(color: HexColor("#6c6c6c")),
                RichText(
                  text: TextSpan(
                    text: 'PROJECT BY ',
                    style: TextStyle(
                      color: HexColor("#8c8c8c"),
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'EZENESS TECHNOLOGY',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}