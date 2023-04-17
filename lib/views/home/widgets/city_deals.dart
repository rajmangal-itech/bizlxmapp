
import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CityDeals extends StatelessWidget {
  const CityDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text(
                'City Deals',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
        SizedBox(
          width: 500,
          height: 300,
          child: ListView.builder(
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                SizedBox(
                                  child: SizedBox(
                                    height: 150,
                                    width: 200,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          15), // Image border
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(
                                            48), // Image radius
                                        child: Image.asset(
                                          GlobalVariables.cityDeals[index]['image']!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 170,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('Shimla'),
                                      Spacer(),
                                      Text('7.8 Km'),
                                      Icon(
                                        Icons.near_me,
                                        color: Colors.red,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 170,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('104, Aroma Taru Villa'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Listing'),
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.red)),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Text('Deals'),
                                  SizedBox(
                                    width: 10,
                                    child: Icon(
                                      Icons.circle,
                                    ),
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.red)),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      width: 200,
                    ),
                  ),
                ],
              );
            },
          ),
        ),

      ],
    );
  }
}
