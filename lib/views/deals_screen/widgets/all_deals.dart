import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AllDeals extends StatelessWidget {
  const AllDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 3, left: 3, right: 3, bottom: 5),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                    boxShadow: [
                      // BoxShadow(
                      //   offset: Offset(0, 0),
                      //   blurRadius: 2,
                      //   spreadRadius: 2,
                      //   color: Colors.black26,
                      // )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/hotels_icons/Rectangle 14 (1).png',
                        width: 111,
                        height: 92,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '5 Days 4 Nights Deal',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text(
                              'Hotel Daawat',
                              style: TextStyle(
                                color: GlobalVariables.boldBlue,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Add To Wish List',
                                    style: TextStyle(
                                      color: GlobalVariables.lightRed,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 2),
                                  child: Icon(
                                    Icons.favorite,
                                    size: 12,
                                    color: GlobalVariables.lightRed,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Price - ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '₹1200 - 1800',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Validity',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  ': 10 Dec, 2022 - 25',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/listing_icons/Vector.png",
                                  width: 7,
                                  height: 10,
                                  color: GlobalVariables.boldBlue,
                                ),
                                const Text(
                                  'Panchkula, Haryana',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 70),
                        child: Column(
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
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
