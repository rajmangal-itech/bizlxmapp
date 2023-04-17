import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class DealVideoInfo extends StatelessWidget {
  const DealVideoInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: MediaQuery.of(context).size.height * .2,
        color: Colors.cyanAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                height: 121,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dimpu Taxi Manali Atal Tunnel Taxi\n'
                      'Snow Sightseeing Review from\n'
                      'Delhi Guests',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'By:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'By Dimpu Taxi Service',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          "Price : ",
                          style: TextStyle(
                              color: GlobalVariables.boldRed,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          ' ₹1200 - ₹1800 ( Inclusive of all taxes )',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          "Validity : ",
                          style: TextStyle(
                              color: GlobalVariables.boldRed,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                        const Text(
                          ' 10 Dec, 2022 - 25 Dec, 2022',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.normal),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/contact_us/whatsapp.png",
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/images/contact_us/phonecall.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
