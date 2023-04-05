import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Deals_screen2view/deals_Screen2.dart';

class DealsScreen extends StatefulWidget {
  const DealsScreen({Key? key}) : super(key: key);

  @override
  State<DealsScreen> createState() => _DealsScreenState();
}

class _DealsScreenState extends State<DealsScreen> {
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DealsScreen2()));
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Price'),
                    Text('Deals Radar'),
                    Text('Change Category')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [Text('Deals')],
                ),
              ),
              SizedBox(
                  height: 500,
                  width: 500,
                  child: ListView.builder(
                      itemCount: 5,
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
                                  )),
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
                                          Text(': 10 Dec, 2022 - 25 Dec, 2022')
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Icon(Icons.phone_enabled),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Icon(Icons.favorite)
                                ],
                              )
                            ],
                          ),
                        );
                      })),
              // Card(
              //   elevation: 5,
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         height: 80,
              //         width:120,
              //         child:ClipRRect(
              //           borderRadius: BorderRadius.circular(15),
              //           child: Image.asset('assets/top_ads/banner1.jpg')
              //         )
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8, top: 0),
              //         child: SizedBox(
              //           child:Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               SizedBox(
              //                 height: 20,
              //               ),
              //               Text('5 Days 4 Nights Deal',style:TextStyle(
              //                   fontWeight: FontWeight.bold,
              //                   fontSize:15
              //               )),
              //               Text('Hotel Green Tara'),
              //               Row(
              //                 children: [
              //                   Icon(Icons.location_history,
              //                     size: 15,
              //                   ),
              //                   Text('Panchkula, Haryana')
              //                 ],
              //               ),
              //               Row(
              //                 children: [
              //                   Text('Price'),
              //                   Text('Panchkula, Haryana')
              //                 ],
              //               ),
              //               Row(
              //                 children: [
              //                   Text('Validity'),
              //                   Text(': 10 Dec, 2022 - 25 Dec, 2022')
              //                 ],
              //               ),
              //             ],
              //           ),
              //
              //         ),
              //       ),
              //       Column(
              //         children: [
              //           Icon(Icons.phone_enabled),
              //           SizedBox(
              //             height:30,
              //           ),
              //           Icon(Icons.favorite)
              //         ],
              //       )
              //
              //     ],
              //   ),
              // )
            ],
          )
        ],
      ),
    );
  }
}
