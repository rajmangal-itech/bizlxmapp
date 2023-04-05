import 'package:bizlx_mobile_app/screens/Ui/Alljobview/all_jobs.dart';
import 'package:bizlx_mobile_app/screens/Ui/Wishlistview/wishlist_page.dart';
import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:bizlx_mobile_app/utills/search_bar.dart';
import 'package:flutter/material.dart';

import '../../../utills/app_bar_header.dart';

class JobInfoDetails extends StatefulWidget {
  const JobInfoDetails({Key? key}) : super(key: key);

  @override
  State<JobInfoDetails> createState() => _JobInfoDetailsState();
}

class _JobInfoDetailsState extends State<JobInfoDetails> {
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
          elevation: 1,
          backgroundColor: Colors.white,
          toolbarHeight: 150,
          flexibleSpace: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Container(
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
                          backgroundColor: Styles.redButton,
                          shape: StadiumBorder()),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>const HotelScreen()));
                      },
                      icon: Icon(
                        Icons.navigate_next,
                        color: Styles.boldBlue,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2),
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
                              child: Padding(
                                padding: const EdgeInsets.all(10),
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
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Salary',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Qualification',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Account Jobs in Agra',
                      style: TextStyle(fontSize:18,
                      decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              Card(
                child:Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        child:  ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.asset(
                            'assets/rounded.png',
                            height: 100,
                            width: 100.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        // decoration: BoxDecoration(
                        //     image: DecorationImage(
                        //         image: AssetImage('assets/top_ads/banner2.jpg'),
                        //       fit: BoxFit.fitHeight
                        //
                        //     )
                        // ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Job : Manager',
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Apple Hotels',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Add To Wishlist',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Panchkula, Haryana',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Experience : 2 Year - 4 Years',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '₹15,000 - ₹30,000 a Month',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Read More',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              Card(
                child:Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100.00,
                        height: 100.00,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/top_ads/banner2.jpg'),
                                fit: BoxFit.fitHeight

                            )
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Job : Manager',
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Apple Hotels',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Add To Wishlist',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Panchkula, Haryana',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Experience : 2 Year - 4 Years',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '₹15,000 - ₹30,000 a Month',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Read More',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              Card(
                child:Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100.00,
                        height: 100.00,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/top_ads/banner2.jpg'),
                                fit: BoxFit.fitHeight

                            )
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Job : Manager',
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Apple Hotels',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Add To Wishlist',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Panchkula, Haryana',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Experience : 2 Year - 4 Years',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '₹15,000 - ₹30,000 a Month',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Read More',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              Card(
                child:Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100.00,
                        height: 100.00,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/top_ads/banner2.jpg'),
                                fit: BoxFit.fitHeight

                            )
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Job : Manager',
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Apple Hotels',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Add To Wishlist',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Panchkula, Haryana',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Experience : 2 Year - 4 Years',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '₹15,000 - ₹30,000 a Month',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Read More',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>WishlistPage()));
                      },
                      backgroundColor: Styles.boldBlue,
                      child: Container(child: Icon(Icons.navigate_next))),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
