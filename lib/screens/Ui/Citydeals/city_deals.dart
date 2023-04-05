import 'package:bizlx_mobile_app/screens/Ui/Infoscreenview/info_screens.dart';
import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:flutter/material.dart';

class CityDeals extends StatelessWidget {
  CityDeals({super.key});
  final _controller = ScrollController();
  // List<String> litems = ["1", "2", "Third", "4"];
  final List names = [
    'assets/city_deals/Rectangle 29.png',
    'assets/city_deals/Rectangle 29 (1).png',
    'assets/city_deals/Rectangle 29.png',
    'assets/city_deals/Rectangle 29 (1).png',
    'assets/city_deals/Rectangle 29.png',
    'assets/city_deals/Rectangle 29 (1).png',
    'assets/city_deals/Rectangle 29.png',
    'assets/city_deals/Rectangle 29 (1).png',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
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
                                            names[index],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>InfoScreens()));
                  },
                  backgroundColor: Styles.boldBlue,
                  child: Container(child: Icon(Icons.navigate_next))),
            ],
          )
        ],
      )),
    );
  }
}
