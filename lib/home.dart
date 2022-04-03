import 'package:flutter/material.dart';

import 'package:flutter_shop_application/title_categories.dart';
import 'categories.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/app_bar.dart';
import 'components/footer_widget.dart';
import 'components/head_tile.dart';
import 'components/products.dart';
import 'components/shopping_carousel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f5f8f9"),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.layerGroup,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.bagShopping,
              color: Colors.black,
            ),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.camera,
              color: Colors.black,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.compass,
              color: Colors.black,
            ),
            label: 'Compass',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.message,
              color: Colors.black,
            ),
            label: 'Messages',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        // ignore: avoid_types_as_parameter_names
        onTap: (int i) {},
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CustomAppBar(),
              const HeadTile(),
              const ShoppingCarousel(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best Practice Definition & Meaning',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('SHOP'),
                    ),
                  ],
                ),
              ),
              const Categories(),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '#BEST TITLE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Products(),
              const Products(),
              const Products(),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '#TOP TITLE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const TitleCategories(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '#SHOP BY CATEGORY',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('View All'),
                  ],
                ),
              ),
              Container(
                color: HexColor("#ffffff"),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: HexColor("#0078b2"),
                            child: const FaIcon(
                              FontAwesomeIcons.layerGroup,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text('Sub Category'),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: HexColor("#0078b2"),
                            child: const FaIcon(
                              FontAwesomeIcons.layerGroup,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text('Sub Category'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Products(),
              const FooterWidget()
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}