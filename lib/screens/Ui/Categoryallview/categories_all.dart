import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:bizlx_mobile_app/utills/headers_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Hoteldealview/hotel_deal_display.dart';

class CategoriesAll extends StatefulWidget {
  const CategoriesAll({Key? key}) : super(key: key);
  @override
  State<CategoriesAll> createState() => _CategoriesAllState();
}

class _CategoriesAllState extends State<CategoriesAll> {
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>const HotelDealDisplay()));
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
          ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: ExpansionTile(
                        leading:ImageIcon(
                          AssetImage("assets/icons/2 1.png")
                        ),
                        title: Text("Hotels & Accommodation"),
                        children: [
                        ListTile(
                              title: Text(
                               "Banquet Halls",
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Camping",
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Cottages",
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Guest Houses",
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Home Stay",
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Hostels",
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Hotels",
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Houseboats",
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Resorts",
                              ),
                            ),
                        ],
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
                       leading:ImageIcon(
                           AssetImage("assets/icons/2 1.png")
                       ),
                       title: Text("Travel & Adventure"),
                       children: [
                         ListTile(
                           title: Text(
                             "Banquet Halls",
                           ),
                         ),
                         ListTile(
                           title: Text(
                             "Camping",
                           ),
                         ),
                         ListTile(
                           title: Text(
                             "Cottages",
                           ),
                         ),
                         ListTile(
                           title: Text(
                             "Guest Houses",
                           ),
                         ),
                         ListTile(
                           title: Text(
                             "Home Stay",
                           ),
                         ),
                         ListTile(
                           title: Text(
                             "Hostels",
                           ),
                         ),
                         ListTile(
                           title: Text(
                             "Hotels",
                           ),
                         ),
                         ListTile(
                           title: Text(
                             "Houseboats",
                           ),
                         ),
                         ListTile(
                           title: Text(
                             "Resorts",
                           ),
                         ),
                       ],
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
                        leading:ImageIcon(
                            AssetImage("assets/icons/2 1.png")
                        ),
                        title: Text("Professionals"),
                        children: [
                          ListTile(
                            title: Text(
                              "Banquet Halls",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Camping",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Cottages",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Guest Houses",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Home Stay",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Hostels",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Hotels",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Houseboats",
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Resorts",
                            ),
                          ),
                        ],
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
