import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:flutter/material.dart';

import '../Dealsdisplayview/deal_display.dart';

class HotelDealDisplay extends StatefulWidget {
  const HotelDealDisplay({Key? key}) : super(key: key);

  @override
  State<HotelDealDisplay> createState() => _HotelDealDisplayState();
}

class _HotelDealDisplayState extends State<HotelDealDisplay> {
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
          ),),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Back",
                        style: TextStyle(color: Styles.whiteButton),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red)),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Add To Wishlist",
                        style: TextStyle(color: Styles.whiteButton),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Styles.boldBlue)),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.near_me,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Google location",
                        style: TextStyle(color: Styles.whiteButton),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.greenAccent)),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset("assets/top_ads/Rectangle 35.png"),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "assets/hotels_icons/Rectangle 14.png",
                              )),
                        ),
                        Card(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "assets/hotels_icons/Rectangle 14 (1).png",
                              )),
                        ),
                        Card(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "assets/hotels_icons/Rectangle 14 (1).png",
                              )),
                        ),
                        Card(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "assets/hotels_icons/Rectangle 14 (1).png",
                              )),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: MediaQuery.of(context).size.height * .20,
                  // width: MediaQuery.of(context).size.width *.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hyatt Regency Dharamshala Resort',
                              style: Styles.heading1,
                            ),
                            Row(
                              children: [
                                Text(
                                  'By:',
                                  style: Styles.heading4,
                                ),
                                Text(' Hyatt Regency Dharamshala')
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Text(
                                    ' ₹1200 - ₹1800 ( Inclusive of all taxes )'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Validity ",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(' 10 Dec, 2022 - 25 Dec, 2022'),
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.favorite)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                // height: MediaQuery.of(context).size.height * .1,
                // width: MediaQuery.of(context).size.width * 11,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ExpansionTile(
                  title: Text("Details"),
                  children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height:150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListView(
                            children: [
                              Text("Anim pariatur cliche reprehenderit, enim eiusmod high life,"
                                  "accusamus terry richardson ad squid. 3 wolf moon officia aute"
                              "non cupidatat skateboard dolor brunch. Food truck quinoa "
                              "nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt"
                              "aliqua put a bird on it squid single origin coffee nulla assumenda"
                              "shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes"
                              "anderson cred nesciunt sapiente ea proident. Ad vegan excepteur"
                              "butcher vice lomo. Leggings occaecat craft beer farm to table,"
                              "raw denim aesthetic synth nesciunt you probably haven t heard of"
                              "them accusamus labore sustainable VHS.")
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 IconButton(onPressed:() {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>DealDisplay()));
                 }, icon:Icon(Icons.circle) )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
