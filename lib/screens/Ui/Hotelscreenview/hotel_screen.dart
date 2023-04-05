import 'package:bizlx_mobile_app/screens/Ui/Citydeals/city_deals.dart';
import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  int _curr = 0;
  final _pageController = PageController();
  final _pageController2 = PageController();

  late ScrollController _scrollController;

  double? _rating;
  IconData? _selectedIcon;
  double? _ratingValue;
  List imgList = [
    "assets/hotels_icons/Rectangle 14 (1).png",
    "assets/hotels_icons/Rectangle 14.png",
    "assets/hotels_icons/Rectangle 14 (1).png",
    "assets/hotels_icons/Rectangle 14.png",
    "assets/hotels_icons/Rectangle 14 (1).png",
    "assets/hotels_icons/Rectangle 14 (1).png",
    "assets/hotels_icons/Rectangle 14.png",
    "assets/hotels_icons/Rectangle 14 (1).png",
    "assets/hotels_icons/Rectangle 14.png",
    "assets/hotels_icons/Rectangle 14 (1).png",
    "assets/hotels_icons/Rectangle 14 (1).png",
    "assets/hotels_icons/Rectangle 14.png",
    "assets/hotels_icons/Rectangle 14 (1).png",
    "assets/hotels_icons/Rectangle 14.png",
    "assets/hotels_icons/Rectangle 14 (1).png"
  ];
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 0),
                                child: Image(
                                  image: new AssetImage("assets/icons/9 1.png"),
                                  width: 50,
                                  color: null,
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.center,
                                )),
                            Text('Account')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 0),
                                child: Image(
                                  image: new AssetImage("assets/icons/9 1.png"),
                                  width: 50,
                                  color: null,
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.center,
                                )),
                            Text("Delivery")
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 0),
                                child: Image(
                                  image: new AssetImage("assets/icons/9 2.png"),
                                  width: 50,
                                  color: null,
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.center,
                                )),
                            Text('Plates')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 0),
                              child: Image(
                                image: new AssetImage("assets/icons/10 1.png"),
                                width: 50,
                                color: null,
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                              ),
                            ),
                            Text('Sheff')
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                            onPressed: () {
                              // Use the controller to change the current page
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                            onPressed: () {
                              // Use the controller to change the current page
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Hotels', style: Styles.heading1),
                          // Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Info'),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red)),
                            ),
                          ),
                          Text('Hot Deals', style: Styles.heading4),
                          Text('Jobs', style: Styles.heading4),
                          Text('Video', style: Styles.heading4),
                        ],
                      ),
                    ),
                    SizedBox(
                      // height: 300,
                      // width: 500,
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * 100,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: PageView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imgList.length,
                              controller: _pageController,
                              itemBuilder: (context, index) {
                                return ListView(
                                  children: [
                                    Card(
                                        child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: ListTile(
                                          leading: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Image.asset(
                                              imgList[index],
                                            ),
                                          ),
                                          title: Text('Hotel Wood Stock Inn'),
                                          subtitle: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Icon(Icons.near_me),
                                                  ),
                                                  Text('Panchkula, Haryana')
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text('4.2'),
                                                  ),
                                                  RatingBar.builder(
                                                      itemSize: 20,
                                                      itemBuilder:
                                                          (context, _) => Icon(
                                                                Icons.star,
                                                                color: Styles
                                                                    .boldBlue,
                                                              ),
                                                      onRatingUpdate: (rating) {
                                                        print(rating);
                                                      })
                                                ],
                                              )
                                            ],
                                          ),
                                          trailing: Column(
                                            children: [
                                              Icon(Icons.phone_enabled),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Icon(Icons.phone_enabled)
                                            ],
                                          ),),
                                    )),
                                    Card(
                                        child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: ListTile(
                                          leading: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.asset(
                                                imgList[index],
                                              )),
                                          title: Text('Hotel Wood Stock Inn'),
                                          subtitle: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Icon(Icons.near_me),
                                                  ),
                                                  Text('Panchkula, Haryana')
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text('4.2'),
                                                  ),
                                                  RatingBar.builder(
                                                      itemSize: 20,
                                                      itemBuilder:
                                                          (context, _) => Icon(
                                                                Icons.star,
                                                                color: Styles
                                                                    .boldBlue,
                                                              ),
                                                      onRatingUpdate: (rating) {
                                                        print(rating);
                                                      })
                                                ],
                                              )
                                            ],
                                          ),
                                          trailing: Column(
                                            children: [
                                              Icon(Icons.phone_enabled),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Icon(Icons.phone_enabled)
                                            ],
                                          )),
                                    )),
                                  ],
                                );
                              })),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                            onPressed: () {
                              _pageController.previousPage(
                                  duration: Duration(seconds: 1),
                                  curve: Curves.ease);
                              // Use the controller to change the current page
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: Styles.boldBlue,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                            onPressed: () {
                              // Use the controller to change the current page
                              _pageController.nextPage(
                                  duration: Duration(seconds: 1),
                                  curve: Curves.easeInOut);
                            },
                            icon: Icon(Icons.arrow_forward_ios,
                                size: 20, color: Styles.boldBlue),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Jewellers', style: Styles.heading1),
                          // Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Info'),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red)),
                            ),
                          ),
                          Text('Hot Deals', style: Styles.heading4),
                          Text('Jobs', style: Styles.heading4),
                          Text('Video', style: Styles.heading4),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width * 70,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: PageView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: imgList.length,
                                controller: _pageController2,
                                itemBuilder: (context, index) {
                                  return ListView(
                                    children: [
                                      Card(
                                          child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: ListTile(
                                          leading: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.asset(
                                                imgList[index],
                                              )),
                                          title: Text('Hotel Wood Stock Inn'),
                                          subtitle: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Icon(Icons.near_me),
                                                  ),
                                                  Text('Panchkula, Haryana')
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text('4.2'),
                                                  ),
                                                  RatingBar.builder(
                                                      itemSize: 20,
                                                      itemBuilder:
                                                          (context, _) => Icon(
                                                                Icons.star,
                                                                color: Styles
                                                                    .boldBlue,
                                                              ),
                                                      onRatingUpdate: (rating) {
                                                        print(rating);
                                                      })
                                                ],
                                              )
                                            ],
                                          ),
                                          trailing: Icon(Icons.more_vert),
                                          isThreeLine: true,
                                        ),
                                      )),
                                      Card(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: ListTile(
                                            leading: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Image.asset(
                                                  imgList[index],
                                                )),
                                            title: Text('Hotel Wood Stock Inn'),
                                            subtitle: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      child:
                                                          Icon(Icons.near_me),
                                                    ),
                                                    Text('Panchkula, Haryana')
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      child: Text('4.2'),
                                                    ),
                                                    RatingBar.builder(
                                                        itemSize: 20,
                                                        itemBuilder:
                                                            (context, _) =>
                                                                Icon(
                                                                  Icons.star,
                                                                  color: Styles
                                                                      .boldBlue,
                                                                ),
                                                        onRatingUpdate:
                                                            (rating) {
                                                          print(rating);
                                                        })
                                                  ],
                                                )
                                              ],
                                            ),
                                            trailing: Icon(Icons.more_vert),
                                            isThreeLine: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                })),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                            onPressed: () {
                              _pageController2.previousPage(
                                  duration: Duration(seconds: 1),
                                  curve: Curves.ease);
                              // Use the controller to change the current page
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                            onPressed: () {
                              // Use the controller to change the current page
                              _pageController2.nextPage(
                                  duration: Duration(seconds: 1),
                                  curve: Curves.easeInOut);
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.navigate_next,
                              color: Styles.boldBlue,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CityDeals()));
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
