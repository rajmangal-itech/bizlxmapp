import 'package:bizlx_app/constants/global_variables.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ListingScroll extends StatelessWidget {
  static CarouselController carouselController = CarouselController();
  const ListingScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              carouselController: carouselController,
              items: GlobalVariables.carouselImages.map(
                (i) {
                  return Builder(
                    builder: (BuildContext context) => Image.network(
                      i,
                      fit: BoxFit.cover,
                      height: 106,
                      width: 427,
                    ),
                  );
                },
              ).toList(),
              options: CarouselOptions(
                viewportFraction: 1,
                height: 106,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Image(
                image: AssetImage(
                  "assets/images/logo/logo-hotel 1.png",
                ),
                width: 37,
                height: 24,
              ),
            )
          ],
        ),
      ],
    );
  }
}
