import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AllAccountCityCategories extends StatefulWidget {
  const AllAccountCityCategories({super.key});

  @override
  State<AllAccountCityCategories> createState() =>
      _AllAccountCityCategoriesState();
}

class _AllAccountCityCategoriesState extends State<AllAccountCityCategories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Row(
            children: [
              Text(
                'All Account Jobs in Agra',
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
                    decorationThickness: 3),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: GlobalVariables.jobsInfo.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 10,
                          spreadRadius: 2,
                          color: Colors.white,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset(
                          GlobalVariables.jobsInfo[index]['image']!,
                          width: 121,
                          height: 99,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Job :  Manager',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Text(
                                'Apple Hotels',
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Experience ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    ': 2 Year - 4 Years',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '₹15,000 - ₹30,000 a Month',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Read More',
                                      style: TextStyle(
                                        color: GlobalVariables.lightRed,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      )),
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
        )
      ],
    );
  }
}
