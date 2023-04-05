import 'package:bizlx_mobile_app/screens/Ui/Wishlistview/wishlist_page.dart';
import 'package:bizlx_mobile_app/utills/app_bar_header.dart';
import 'package:bizlx_mobile_app/utills/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utills/app_styles.dart';

class JobDescriptions extends StatefulWidget {
  const JobDescriptions({Key? key}) : super(key: key);

  @override
  State<JobDescriptions> createState() => _JobDescriptionsState();
}

class _JobDescriptionsState extends State<JobDescriptions> {
  int _activePage = 0;
  final PageController _pageController = PageController(initialPage: 0);
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
  List<String> images = [
    'assets/top_ads/Rectangle 35.png',
    'assets/top_ads/Rectangle 35.png',
    'assets/top_ads/Rectangle 35.png',
    'assets/top_ads/Rectangle 35.png',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 4,
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
                            backgroundColor: Styles.redButton,
                            shape: StadiumBorder()),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Image.asset('assets/logo/bell-icon 1.png'),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 150,
              child: Stack(
                children: [
                  PageView.builder(
                      itemCount: images.length,
                      controller: _pageController,
                      onPageChanged: (value) {
                        setState(() {
                          _activePage = value;
                        });
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover)),
                        );
                      }),
                  Positioned(
                      bottom: 20,
                      left: 170,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(
                              images.length,
                              (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: InkWell(
                                      onTap: () {
                                        _pageController.animateToPage(index,
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.easeIn);
                                      },
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor: _activePage == index
                                            ? Colors.amber
                                            : Colors.grey,
                                      ),
                                    ),
                                  )),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios),
                        label: Text('Back'),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Expanded(
                        flex: 1,
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.favorite),
                            label: Text('Add To Wishlist'))),
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.near_me),
                          label: Text('Google location')))
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.near_me),
                  label: Text('Google location'))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [Text('Description'), Spacer(), Icon(Icons.add)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Manager',),
                    Text('Apple Hotels'),
                    Text('Panchkula,Haryana'),
                    Text('Manager'),
                    Text('Apple Hotels'),
                    Text('Panchkula,Haryana'),
                    Text('Manager'),
                    Text('Apple Hotels'),
                    Text('Panchkula,Haryana'),
                    Text('Manager'),
                    Text('Apple Hotels'),
                    Text('Panchkula,Haryana'),
                    ElevatedButton(onPressed:() {
                    }, child: Text('Apply Now'))
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
      ),
    );
  }
}
