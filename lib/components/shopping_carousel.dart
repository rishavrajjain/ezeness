import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ShoppingCarousel extends StatelessWidget {
  const ShoppingCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.yellow,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://blog.tours4fun.com/wp-content/uploads/2020/01/fjord-hero-Flam-village-1230x600.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.white.withOpacity(0.5),
                  height: 20,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'AED 300/-',
                          style: TextStyle(
                            color: HexColor("#4b4b4b"),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'AED 600/-',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: HexColor("#8c8c8c"),
                                  decoration: TextDecoration.lineThrough),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  '50% Off',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 1,
      ),
    );
  }
}
