import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class DealVideoButton extends StatelessWidget {
  const DealVideoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
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
              SizedBox(
                width: 20,
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
            ],
          ),
        ),
      ],
    );
  }
}
