import 'package:bizlx_mobile_app/utills/app_bar_header.dart';
import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:bizlx_mobile_app/utills/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Categoryallview/categories_all.dart';

class WishlistPage extends StatefulWidget {
  WishlistPage({Key? key,}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  int tileNo = 1;
  List imgList = [
    "assets/top_ads/banner1.jpg",
    "assets/top_ads/banner2.jpg",
    "assets/top_ads/banner3.jpg",
    "assets/top_ads/banner1.jpg",
    "assets/top_ads/banner2.jpg",
    "assets/top_ads/banner3.jpg",
  ];
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
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CategoriesAll()));
                        },
                        icon: Icon(
                          Icons.navigate_next,
                          color: Styles.boldBlue,
                        ),
                      ),
                    ),
                  ],
                ),
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
                  children: [
                    Text(
                      'My Wishlist',
                      style: TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          color: Colors.transparent,
                          decorationColor: Colors.red,
                          shadows: [
                            Shadow(
                                color: Styles.boldBlue, offset: Offset(0, -10))
                          ],
                          decoration: TextDecoration.underline,
                          decorationThickness: 3),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Name'),
                    Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Text('Details'),
                    ),
                    Text('Action'),
                  ],
                ),
              ),
              SizedBox(
                  height: 500,
                  child: ListView.builder(
                      itemCount: imgList.length,
                      itemBuilder: (context, int index) {
                        return Card(
                          elevation: 5,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 120,
                                  child: Image.asset(
                                      "assets/wishlist/Rectangle 65.png"),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Apple Hotel Work From'),
                                    Text('Shimla')
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Container(
                                  height: 120,
                                  child: Image.asset(
                                      "assets/wishlist/arrow1 1.png"),
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Container(
                                  height: 120,
                                  child:
                                      Image.asset("assets/wishlist/Vector.png"),
                                ),
                                flex: 1,
                              )
                            ],
                          ),
                        );
                      })),

              // SizedBox(
              //   height:300,
              //   width: 500,
              //   child: ListView.builder(
              //       itemCount: imgList.length,
              //       itemBuilder: (BuildContext, int index) {
              //         return Card(
              //           child: Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Container(
              //                   child: ClipRRect(
              //                     borderRadius: BorderRadius.circular(2),
              //                     child: Image.asset(
              //                       imgList[index],
              //                       height: 80,
              //                       fit: BoxFit.fill,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               Padding(
              //                 padding:
              //                     const EdgeInsets.only(left: 8, bottom: 40),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text("Apple Hote"),
              //                     Text("Work From"),
              //                     Text("Shimla"),
              //                   ],
              //                 ),
              //               ),
              //               Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Container(
              //                     child: Icon(Icons.arrow_forward),
              //                   )
              //
              //                 ],
              //               ),
              //               Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Container(
              //                     child: Icon(Icons.delete_forever),
              //                   )
              //
              //                 ],
              //               ),
              //               SizedBox(
              //                 height: 50,
              //               ),
              //               Container(
              //                   child: IconButton(
              //                     icon: Icon(
              //                       Icons.navigate_next,
              //                       color: Styles.boldBlue,
              //                     ),
              //                     onPressed: () {
              //                       Navigator.push(
              //                           context,
              //                           MaterialPageRoute(
              //                               builder: (context) =>DealsScreen()));
              //                     },
              //                   ))
              //             ],
              //           ),
              //         );
              //       }),
              // )
            ],
          )
        ],
      ),
    );
  }
}
