import 'package:bizlx_mobile_app/screens/Ui/Jobinfodetailsview/job_info_details.dart';
import 'package:bizlx_mobile_app/utills/app_bar_header.dart';
import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:bizlx_mobile_app/utills/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobSearch extends StatefulWidget {
  const JobSearch({Key? key}) : super(key: key);

  @override
  State<JobSearch> createState() => _JobSearchState();
}

class _JobSearchState extends State<JobSearch> {
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
          ),),
      body: ListView(
        children: [
          Column(
            children: [
              // AppBarHeader(),
              // SearchBar(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/icons/9 1.png'),
                        width: 30,
                      ),
                    ),
                    Text(
                      'All Account Jobs',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Agra (10)'),
                    Text('Bengaluru (15)'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>JobInfoDetails()));
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
