import 'package:bizlx_app/common/responsive.dart';
import 'package:bizlx_app/common/responsive_widget.dart';
import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class ListingHotDeals extends StatefulWidget {
  const ListingHotDeals({super.key});

  @override
  State<ListingHotDeals> createState() => _ListingHotDealsState();
}

class _ListingHotDealsState extends State<ListingHotDeals> {
  late PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Hot Deals',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.transparent,
                    decorationColor: Colors.red,
                    shadows: [
                      Shadow(
                          color: GlobalVariables.boldBlue,
                          offset: Offset(0, -10))
                    ],
                    decoration: TextDecoration.underline,
                    decorationThickness: 3),
              ),
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    onPressed: () {
                      _pageController.previousPage(
                          duration: Duration(seconds: 1), curve: Curves.ease);
                    },
                    icon: Image.asset(
                      'assets/images/arrows/back_arrow.png',
                      width: 8,
                      height: 13,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOut);
                    },
                    icon: Image.asset(
                      'assets/images/arrows/forward_arrow.png',
                      width: 8,
                      height: 13,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        if (isMobile(context))
          SizedBox(
            height: 114,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return isMobile(context)
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: Colors.black26,
                                )
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
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '5 Days 4 Nights Deal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Add To Wish List',
                                              style: TextStyle(
                                                color: GlobalVariables.lightRed,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 2),
                                            child: Icon(
                                              Icons.favorite,
                                              size: 12,
                                              color: GlobalVariables.lightRed,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: Colors.black26,
                                )
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
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '5 Days 4 Nights Deal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Add To Wish List',
                                              style: TextStyle(
                                                color: GlobalVariables.lightRed,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 2),
                                            child: Icon(
                                              Icons.favorite,
                                              size: 12,
                                              color: GlobalVariables.lightRed,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                        );
                }),
          ),
      ],
    );
  }
}
