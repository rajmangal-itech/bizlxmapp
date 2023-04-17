import 'package:bizlx_app/constants/global_variables.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TopAds extends StatelessWidget {
  static CarouselController carouselController = CarouselController();
  const TopAds({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              child: const Text(
                'Top Ads',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              CarouselSlider(
                carouselController: carouselController,
                items: GlobalVariables.carouselImages.map(
                  (i) {
                    return Builder(
                      builder: (BuildContext context) => Image.network(
                        i,
                        fit: BoxFit.cover,
                        height: 200,
                      ),
                    );
                  },
                ).toList(),
                options: CarouselOptions(viewportFraction: 1, height: 200),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  // Use the controller to change the current page
                  carouselController.previousPage();
                },
                icon: Image.asset('assets/images/arrows/back_arrow.png'),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  // Use the controller to change the current page
                  carouselController.nextPage();
                },
                icon:Image.asset('assets/images/arrows/forward_arrow.png'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
