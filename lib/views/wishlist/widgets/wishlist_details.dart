import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class WishlistDetails extends StatelessWidget {
  const WishlistDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(
                'My Wishlist',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.transparent,
                    decorationColor: Colors.red,
                    shadows: [
                      Shadow(
                          color: GlobalVariables.boldBlue,
                          offset: Offset(0, -10))
                    ],
                    decoration: TextDecoration.underline,
                    decorationThickness: 2),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Name',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:const [
                 Text(
                    'Details',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Action',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: Card(
                        elevation: 2,
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 120,
                                child: Image.asset(
                                  "assets/images/wishlist/Rectangle 65.png",
                                  width: 74,
                                  height: 55,
                                ),
                              ),
                              flex: 2,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const Text(
                                    'Apple Hotel Work From',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  Text('Shimla',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12)),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              flex: 2,
                            ),
                            Expanded(
                              child: Container(
                                height: 120,
                                child: Image.asset(
                                    "assets/images/wishlist/arrow1 1.png"),
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 120,
                                child: Image.asset(
                                    "assets/images/wishlist/Vector.png"),
                              ),
                              flex: 1,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )),
      ],
    );
  }
}
