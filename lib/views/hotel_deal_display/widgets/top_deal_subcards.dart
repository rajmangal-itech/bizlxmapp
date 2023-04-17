import 'package:flutter/material.dart';

class TopDealSubCards extends StatelessWidget {
  const TopDealSubCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Card(
                    elevation: 2,
                    child: Container(
                      child: Image.asset(
                        "assets/images/hotel_deal_display/Rectangle 85.png",
                        width: 88,
                        height: 71,
                      ),
                    ),
                  )
                ],
              ),
            );

            // Container(

            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(16),
            //   ),
            //   width: MediaQuery.of(context).size.width * 0.3,
            //   child: Card(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(16.0),
            //     ),
            //     elevation: 2,
            //     child: Container(
            //       width: 88,
            //       height: 71,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(16),
            //       ),
            //     ),
            //   ),
            // );
          }),
    );
  }
}
