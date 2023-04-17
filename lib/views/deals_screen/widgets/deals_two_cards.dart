import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class DealsTwoCards extends StatelessWidget {
  const DealsTwoCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        spreadRadius: 2,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/hotels_icons/Rectangle 14.png',
                        width: 111,
                        height: 92,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dimpu Taxi Manali Atal Tunnel Taxi\n'
                              "Snow Sightseeing Review\n"
                              "from Delhi Guests",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
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
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
