import 'package:bizlx_mobile_app/screens/Ui/ListingProfile/listing_profile_list_screen.dart';
import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _curr = 0;

  /// Create a controller to control the carousel programmatically
  CarouselController carouselController = CarouselController();
  final _pageController = PageController();
  final _pageController1 = PageController();
  final _pageController2 = PageController();
  final _pageController3 = PageController();
  final _pageController4 = PageController();
  late TabController tabController;

  List<String> Gender = ['Male', 'Female', 'Other'];
  List users = [
    {
      'id': '1',
      'name': 'roy',
      'designation': 'engineer',
    },
    {
      'id': '2',
      'name': 'john',
      'designation': 'doctor',
    },
    {
      'id': '3',
      'name': 'rose',
      'designation': 'clerk',
    }
  ];
  List near = [
    {
      'id': '1',
      'location': 'Manali',
    },
    {
      'id': '2',
      'location': 'Mohali',
    },
    {
      'id': '3',
      'location': 'Panchkula',
    }
  ];
  List deals = [
    {
      'id': '1',
      'deals': 'Hot Deals',
    },
    {
      'id': '2',
      'deals': 'Normal Deals',
    },
    {
      'id': '3',
      'deals': 'Winter deals',
    }
  ];

  String? userId;
  String? nearId;
  String? dealsId;
  // Option 2
  String? Selectedgender;
  var featuredImages = [
    'assets/top_ads/Rectangle 35.png',
    'assets/top_ads/Rectangle 35.png',
    'assets/top_ads/Rectangle 35.png',
  ];

  var iconsImage = [
    "assets/icons/1 7.png",
    "assets/icons/2 1.png",
    "assets/icons/3 1.png",
    "assets/icons/4 1.png",
    "assets/icons/5 1.png",
    "assets/icons/6 1.png",
    "assets/icons/9 1.png",
    "assets/icons/9 2.png",
    "assets/icons/10 1.png",
    "assets/icons/12 1.png",
    "assets/icons/13 1.png",
    "assets/icons/14 1.png",
    "assets/icons/1 7.png",
    "assets/icons/2 1.png",
    "assets/icons/3 1.png",
    "assets/icons/4 1.png",
    "assets/icons/5 1.png",
    "assets/icons/6 1.png",
    "assets/icons/9 1.png",
    "assets/icons/9 2.png",
    "assets/icons/10 1.png",
    "assets/icons/12 1.png",
    "assets/icons/13 1.png",
    "assets/icons/14 1.png",
  ];

  var iconNames = [
    'Buffet',
    'Restaurant',
    'Delivery',
    'Plate',
    'Plane',
    'Aeroplane',
    'Buffet',
    'Restaurant',
    'Delivery',
    'Plate',
    'Plane',
    'Aeroplane',
    'Buffet',
    'Restaurant',
    'Delivery',
    'Plate',
    'Plane',
    'Aeroplane',
    'Buffet',
    'Restaurant',
    'Delivery',
    'Plate',
    'Plane',
    'Aeroplane',
    'Buffet',
    'Restaurant',
    'Delivery',
    'Plate',
    'Plane',
    'Aeroplane',
    'Buffet',
    'Restaurant',
    'Delivery',
    'Plate',
    'Plane',
    'Aeroplane',
  ];
  List imgList = [
    "assets/top_ads/banner1.jpg",
    "assets/top_ads/banner2.jpg",
    "assets/top_ads/banner3.jpg",
  ];
  final List<String> names = <String>[
    'Buffet',
    'Restaurant',
    'Delivery',
    'Plate',
    'Plane',
    'Aeroplane',
    'Buffet',
    'Restaurant',
  ];
  final List<String> locationName = <String>[
    'Himachal Taxi Service',
    'Mohali Taxi Service',
    'Panchkula Taxi Service',
  ];
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 180,
          flexibleSpace: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/logo/logo1.png",
                        height: 40,
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('List Business'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ListingProfile()));
                          },
                          child: Image.asset('assets/logo/bell-icon 1.png')),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  //height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: true,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Category'),
                            ),
                            value: userId,
                            items: users.map((item) {
                              return DropdownMenuItem(
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Text(item['name'])),
                                value: item['id'].toString(),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                userId = newValue;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: true,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Near'),
                            ),
                            value: userId,
                            items: users.map((item) {
                              return DropdownMenuItem(
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Text(item['name'])),
                                value: item['id'].toString(),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                userId = newValue;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: true,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Deals'),
                            ),
                            value: userId,
                            items: users.map((item) {
                              return DropdownMenuItem(
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Text(item['name'])),
                                value: item['id'].toString(),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                userId = newValue;
                              });
                            },
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                color: Colors.red,
                              ),
                              height: 60,
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25, left: 5),
                        child: Text(
                          'Popular',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.transparent,
                              decorationColor: Colors.red,
                              shadows: [
                                Shadow(
                                    color: Styles.boldBlue,
                                    offset: Offset(0, -10))
                              ],
                              decoration: TextDecoration.underline,
                              decorationThickness: 3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .5,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(10)),
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: iconsImage.length,
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: GridView.builder(
                                itemCount: iconsImage.length,
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 15,
                                  mainAxisSpacing: 10,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            iconsImage[index],
                                          ),
                                        ),
                                        Expanded(child: Text(iconNames[index])),
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ],
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: Text(
                      'All',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  )
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
                        _pageController.previousPage(
                            duration: Duration(seconds: 1), curve: Curves.ease);
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
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Styles.boldBlue,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Top Ads',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.transparent,
                            decorationColor: Colors.red,
                            shadows: [
                              Shadow(
                                  color: Styles.boldBlue,
                                  offset: Offset(0, -10))
                            ],
                            decoration: TextDecoration.underline,
                            decorationThickness: 3),
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 250,
                    child: PageView.builder(
                      controller: _pageController1,
                      itemCount: 3,
                      pageSnapping: true,
                      itemBuilder: (context, pagePosition) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(featuredImages[pagePosition]),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 170,
                    left: 30,
                    child: Text(
                      'Himachal Taxi Service',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )
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
                        _pageController1.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
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
                        _pageController1.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Styles.boldBlue,
                      ),
                    ),
                  ),
                ],
              ),

              /*----------------------------Job Section --------------------------*/

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Jobs',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.transparent,
                            decorationColor: Colors.red,
                            shadows: [
                              Shadow(
                                  color: Styles.boldBlue,
                                  offset: Offset(0, -10))
                            ],
                            decoration: TextDecoration.underline,
                            decorationThickness: 3),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: PageView.builder(
                  controller: _pageController2,
                  itemCount: iconsImage.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListView.builder(
                      itemCount: names.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10, right: 7),
                          child: SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  Image.asset(
                                    iconsImage[index],
                                    height: 50,
                                  ),
                                  Text("${names[index]}")
                                ],
                              )),
                        );
                      },
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 22, top: 5),
                    child: Text(
                      'All',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  )
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
                        _pageController2.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
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
                        _pageController2.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Styles.boldBlue,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hotels',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.transparent,
                            decorationColor: Colors.red,
                            shadows: [
                              Shadow(
                                  color: Styles.boldBlue,
                                  offset: Offset(0, -10))
                            ],
                            decoration: TextDecoration.underline,
                            decorationThickness: 3),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Info'),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red)),
                            ),
                            Text('Hot Deals', style: Styles.heading4),
                            Text('Jobs', style: Styles.heading4),
                            Text('Video', style: Styles.heading4),
                          ],
                        ),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 260,
                child: PageView.builder(
                    controller: _pageController3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            elevation: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'assets/hotels_icons/Rectangle 14.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, right: 5),
                                          child: Text(
                                            'Hotel Wood Stock Inn',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_history,
                                                size: 15,
                                              ),
                                              Text(
                                                'Panchkula, Haryana',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Row(
                                            children: [
                                              Text('4.2'),
                                              RatingBar.builder(
                                                  itemSize: 20,
                                                  itemBuilder: (context, _) =>
                                                      Icon(
                                                        Icons.star,
                                                        color: Styles.boldBlue,
                                                      ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  })
                                            ],
                                          ),
                                        ),
                                      ],
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                    ),
                                    height: 100,
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/contact_us/4485687 1.png"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Image.asset(
                                            "assets/contact_us/icon-phn 3.png"),
                                      ],
                                    ),
                                  ),
                                  flex: 1,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'assets/hotels_icons/Rectangle 14.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, right: 5),
                                          child: Text(
                                            'Hotel Wood Stock Inn',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_history,
                                                size: 15,
                                              ),
                                              Text(
                                                'Panchkula, Haryana',
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Row(
                                            children: [
                                              Text('4.2'),
                                              RatingBar.builder(
                                                  itemSize: 20,
                                                  itemBuilder: (context, _) =>
                                                      Icon(
                                                        Icons.star,
                                                        color: Styles.boldBlue,
                                                      ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  })
                                            ],
                                          ),
                                        ),
                                      ],
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                    ),
                                    height: 100,
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/contact_us/4485687 1.png"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Image.asset(
                                            "assets/contact_us/icon-phn 3.png"),
                                      ],
                                    ),
                                  ),
                                  flex: 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                      onPressed: () {
                        _pageController3.previousPage(
                            duration: Duration(seconds: 1), curve: Curves.ease);
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
                        _pageController3.nextPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(Icons.arrow_forward_ios,
                          size: 20, color: Styles.boldBlue),
                    ),
                  ),
                ],
              ),
              /*------------------------------------------------Jewellers--------------------------------*/
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Jewellers',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.transparent,
                            decorationColor: Colors.red,
                            shadows: [
                              Shadow(
                                  color: Styles.boldBlue,
                                  offset: Offset(0, -10))
                            ],
                            decoration: TextDecoration.underline,
                            decorationThickness: 3),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Info'),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red)),
                            ),
                            Text('Hot Deals', style: Styles.heading4),
                            Text('Jobs', style: Styles.heading4),
                            Text('Video', style: Styles.heading4),
                          ],
                        ),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 260,
                child: PageView.builder(
                    controller: _pageController4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            elevation: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'assets/hotels_icons/Rectangle 14.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, right: 5),
                                          child: Text(
                                            'Hotel Wood Stock Inn',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_history,
                                                size: 15,
                                              ),
                                              Text(
                                                'Panchkula, Haryana',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Row(
                                            children: [
                                              Text('4.2'),
                                              RatingBar.builder(
                                                  itemSize: 20,
                                                  itemBuilder: (context, _) =>
                                                      Icon(
                                                        Icons.star,
                                                        color: Styles.boldBlue,
                                                      ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  })
                                            ],
                                          ),
                                        ),
                                      ],
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                    ),
                                    height: 100,
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/contact_us/4485687 1.png"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Image.asset(
                                            "assets/contact_us/icon-phn 3.png"),
                                      ],
                                    ),
                                  ),
                                  flex: 1,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'assets/hotels_icons/Rectangle 14.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, right: 5),
                                          child: Text(
                                            'Hotel Wood Stock Inn',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_history,
                                                size: 15,
                                              ),
                                              Text(
                                                'Panchkula, Haryana',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Row(
                                            children: [
                                              Text('4.2'),
                                              RatingBar.builder(
                                                  itemSize: 20,
                                                  itemBuilder: (context, _) =>
                                                      Icon(
                                                        Icons.star,
                                                        color: Styles.boldBlue,
                                                      ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  })
                                            ],
                                          ),
                                        ),
                                      ],
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                    ),
                                    height: 100,
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/contact_us/4485687 1.png"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Image.asset(
                                            "assets/contact_us/icon-phn 3.png"),
                                      ],
                                    ),
                                  ),
                                  flex: 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                      onPressed: () {
                        _pageController4.previousPage(
                            duration: Duration(seconds: 1), curve: Curves.ease);
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
                        _pageController4.nextPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(Icons.arrow_forward_ios,
                          size: 20, color: Styles.boldBlue),
                    ),
                  ),
                ],
              ),
              /*
   -----------------------------City Deals------------------------------
    */
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'City Deals',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.transparent,
                            decorationColor: Colors.red,
                            shadows: [
                              Shadow(
                                  color: Styles.boldBlue,
                                  offset: Offset(0, -10))
                            ],
                            decoration: TextDecoration.underline,
                            decorationThickness: 3),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      child: Container(
                                        height: 150,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.asset(
                                              'assets/city_deals/Rectangle 29.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        width: 195,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          top: 10,
                                        ),
                                        child: Row(
                                          children: [
                                            Text('Shimla'),
                                            SizedBox(
                                              width: 45,
                                            ),
                                            Text('7.8 Km'),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Icon(
                                              Icons.near_me,
                                              color: Colors.red,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text('104, Aroma Taru Villa'),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
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
                      ],
                    );
                  },
                ),
              ),

              /*-----------------------------------------------Info------------------------------------*/

              Container(
                height: 60,
                decoration: BoxDecoration(color: Colors.red),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'Follow Bizlx',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/info/icon_info.png'),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ExpansionTile(
                        leading: ImageIcon(
                          AssetImage(
                            "assets/info/Vector.png",
                          ),
                          color: Colors.blue,
                        ),
                        title: Text(
                          "GENERAL INFO",
                          style: TextStyle(color: Colors.black),
                        ),
                        children: [
                          ListTile(
                            title: Text(
                              "Home",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Blog",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "About",
                            ),
                          ),
                        ],
                        trailing: ImageIcon(
                          AssetImage(
                            "assets/info/Vector (1).png",
                          ),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ExpansionTile(
                        leading: ImageIcon(
                          AssetImage(
                            "assets/info/Vector (2).png",
                          ),
                          color: Colors.blue,
                        ),
                        title: Text(
                          "RESOURCES",
                          style: TextStyle(color: Colors.black),
                        ),
                        children: [
                          ListTile(
                            title: Text(
                              "Payment",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Terms Of Use",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Privacy Policy",
                            ),
                          ),
                        ],
                        trailing: ImageIcon(
                          AssetImage(
                            "assets/info/Vector (1).png",
                          ),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ExpansionTile(
                        leading: ImageIcon(
                          AssetImage(
                            "assets/info/Vector (3).png",
                          ),
                          color: Colors.blue,
                        ),
                        title: Text(
                          "RESELLER",
                          style: TextStyle(color: Colors.black),
                        ),
                        children: [
                          ListTile(
                            title: Text(
                              "Login",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Register",
                            ),
                          ),
                        ],
                        trailing: ImageIcon(
                          AssetImage(
                            "assets/info/Vector (1).png",
                          ),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ExpansionTile(
                        leading: ImageIcon(
                          AssetImage(
                            "assets/info/Vector (4).png",
                          ),
                          color: Colors.blue,
                        ),
                        title: Text(
                          "BUSINESS LISTING",
                          style: TextStyle(color: Colors.black),
                        ),
                        children: [
                          ListTile(
                            title: Text(
                              "Login",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Register",
                            ),
                          ),
                        ],
                        trailing: ImageIcon(
                          AssetImage(
                            "assets/info/Vector (1).png",
                          ),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
