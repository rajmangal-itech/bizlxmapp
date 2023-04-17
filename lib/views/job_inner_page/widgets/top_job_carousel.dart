import 'package:bizlx_app/constants/global_variables.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TopJobCarousel extends StatefulWidget {
  const TopJobCarousel({super.key});

  @override
  State<TopJobCarousel> createState() => _TopJobCarouselState();
}

class _TopJobCarouselState extends State<TopJobCarousel> {
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: carouselController,
          items: GlobalVariables.carouselImages.map(
            (i) {
              return Builder(
                builder: (BuildContext context) => Image.asset(
                  "assets/images/top_ads/Rectangle 35.png",
                  fit: BoxFit.cover,
                  height: 134,
                  width: 411,
                ),
              );
            },
          ).toList(),
          options: CarouselOptions(viewportFraction: 1, height: 134),
        ),
        const Positioned(
          top: 50,
          left: 150,
          child: Text(
            "Apple Hotel",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
