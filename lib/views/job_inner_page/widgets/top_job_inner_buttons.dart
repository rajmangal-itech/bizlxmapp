import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class TopJobInnerButtons extends StatefulWidget {
  const TopJobInnerButtons({super.key});

  @override
  State<TopJobInnerButtons> createState() => _TopJobInnerButtonsState();
}

class _TopJobInnerButtonsState extends State<TopJobInnerButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalVariables.boldRed,
                ),
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/arrows/back_arrow.png",
                  color: GlobalVariables.backgroundColor,
                ),
                label: const Text(
                  "Back",
                  style: TextStyle(),
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalVariables.boldBlue,
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  weight: 12,
                  size: 15,
                ),
                label: const Text(
                  "Add To Wishlist",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalVariables.greenColor,
                ),
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/listing_icons/Vector.png",
                  color: GlobalVariables.backgroundColor,
                ),
                label: const Text(
                  "Google Location",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    GlobalVariables.boldBlue,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'View All Jobs',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ))
          ],
        )
      ],
    );
  }
}
