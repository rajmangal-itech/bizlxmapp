import 'package:bizlx_app/constants/global_variables.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TopDealDisplay extends StatefulWidget {
  const TopDealDisplay({super.key});

  @override
  State<TopDealDisplay> createState() => _TopDealDisplayState();
}

class _TopDealDisplayState extends State<TopDealDisplay> {
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
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
        ],
      ),
    );
  }
}
