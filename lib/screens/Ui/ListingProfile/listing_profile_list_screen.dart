import 'package:bizlx_mobile_app/screens/Ui/Jobsearchview/job_search.dart';
import 'package:bizlx_mobile_app/utills/app_bar_header.dart';
import 'package:bizlx_mobile_app/utills/search_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../utills/app_styles.dart';

class ListingProfile extends StatefulWidget {
  ListingProfile({Key? key}) : super(key: key);

  @override
  State<ListingProfile> createState() => _ListingProfileState();
}

class _ListingProfileState extends State<ListingProfile> {
  var ratingvalue = 0.0;
  final _pageController1 = PageController();
  final _pageController2 = PageController();
  int _activePage = 0;
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
                   /* SizedBox(
                      height: 100,
                    ),*/
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/logo/logo1.png",
                      /*  height: 50,*/
                      ),
                    ),
                    Spacer(),
                    Container(
                      child:
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('List Business'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListingProfile()));
                          },
                          child: Image.asset('assets/logo/bell-icon 1.png')
                      ),
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
                        height: 40,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // AppBarHeader(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/top_ads/Rectangle 35.png"),
                              fit: BoxFit.fill),
                          color: Colors.cyan,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: Image(
                      image: new AssetImage("assets/icons/2 1.png"),
                      width: 30,
                    ))
                  ],
                ),
                Row(
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.cyan,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text('Enquiry'),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red)),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Hotel Daawat",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RatingBar.builder(
                                            itemSize: 20,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemBuilder: (context, _) =>
                                                Container(
                                                  // height: 30,
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                            onRatingUpdate: (rating) {
                                              setState(() {
                                                ratingvalue = rating;
                                              });

                                              print('${rating}');
                                            }),
                                        Text("Write a Review"),
                                      ],
                                    ),
                                    width: 275,
                                  ),
                                  SizedBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Rating :$ratingvalue Reviews"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("View All"),
                                      ],
                                    ),
                                    width: 275,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton.icon(
                                        onPressed: () {
                                          print(
                                              "You pressed Icon Elevated Button");
                                        },
                                        icon: Icon(Icons.phone),
                                        label: Text('9456789532'),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.red)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      ElevatedButton.icon(
                                        onPressed: () {
                                          print(
                                              "You pressed Icon Elevated Button");
                                        },
                                        icon: Icon(Icons.whatshot_sharp),
                                        label: Text('Whatsapp'),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.lightGreen)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton.icon(
                                        onPressed: () {
                                          print(
                                              "You pressed Icon Elevated Button");
                                        },
                                        icon: Icon(Icons.location_history),
                                        label: Text('Google location'),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.lightGreen)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      ElevatedButton.icon(
                                        onPressed: () {
                                          print(
                                              "You pressed Icon Elevated Button");
                                        },
                                        icon: Icon(Icons.share),
                                        label: Text('Share'),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.red)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Hot Deals',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: IconButton(
                          onPressed: () {
                            _pageController1.previousPage(
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
                            _pageController1.nextPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.easeInOut);
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
                ),
                SizedBox(
                    height: 130,
                    width: 500,
                    child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController1,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 2,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 120,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/top_ads/Rectangle 35.png',
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 0, bottom: 20, top: 0),
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('5 Days 4 Nights Deal',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        Text('Hotel Green Tara'),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_history,
                                              size: 15,
                                            ),
                                            Text('Panchkula, Haryana')
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('Price'),
                                            Text('Panchkula, Haryana')
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('Validity'),
                                            Text(
                                                ': 10 Dec, 2022 - 25 Dec, 2022')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      Icon(Icons.phone_enabled),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Icon(Icons.favorite)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        })),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Jobs',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      Spacer(),
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
                            _pageController2.nextPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.easeInOut);
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
                ),
                SizedBox(
                  height: 130,
                  width: 500,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController2,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 2,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/top_ads/Rectangle 35.png',
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 0, bottom: 20, top: 0),
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('5 Days 4 Nights Deal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text('Hotel Green Tara'),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_history,
                                          size: 15,
                                        ),
                                        Text('Panchkula, Haryana')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Price'),
                                        Text('Panchkula, Haryana')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Validity'),
                                        Text(': 10 Dec, 2022 - 25 Dec, 2022')
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Icon(Icons.phone_enabled),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Icon(Icons.favorite)
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ExpansionTile(
                        title: Text('About Us'),
                        children: [
                          ListTile(
                            title: Row(
                              children: [
                                Text('write code here'),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                Text('write code here'),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ExpansionTile(
                        title: Text('Services'),
                        children: [
                          ListTile(
                            title: Row(
                              children: [
                                Text('write code here'),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                Text('write code here'),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => JobSearch()));
                        },
                        backgroundColor: Styles.boldBlue,
                        child: Container(child: Icon(Icons.navigate_next))),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
