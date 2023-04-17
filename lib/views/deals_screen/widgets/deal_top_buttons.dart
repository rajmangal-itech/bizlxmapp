import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class DealTopButtons extends StatelessWidget {
  const DealTopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: GlobalVariables.greyBackgroundColor,
                ),
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black12.withOpacity(.03),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: GlobalVariables.greyBackgroundColor,
                ),
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black12.withOpacity(.03),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Deals Radar',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: GlobalVariables.greyBackgroundColor,
                ),
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black12.withOpacity(.03),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Change Category',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Row(
            children: [
              Text(
                'Deals',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.transparent,
                    decorationColor: Colors.red,
                    shadows: [
                      Shadow(
                          color: GlobalVariables.boldBlue,
                          offset: Offset(0, -7))
                    ],
                    decoration: TextDecoration.underline,
                    decorationThickness: 2),
              ),
            ],
          ),
        )
      ],
    );
  }
}
