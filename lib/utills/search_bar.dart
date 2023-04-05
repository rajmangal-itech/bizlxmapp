import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
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
  TextEditingController catergoryNameController = TextEditingController();
  TextEditingController locationNameController = TextEditingController();
  TextEditingController dealsdayController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        toolbarHeight: 170,
        flexibleSpace: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 70,
                ),
                Container(
                  child: Image.asset("assets/logo/logo1.png",
                  height: 40,),
                ),
                Spacer(),
                Container(
                  child: ElevatedButton(
                    onPressed:() {

                    },child: Text('List Business'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.redButton,
                      shape: StadiumBorder()
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  child: IconButton(onPressed: () {  },
                    icon: Icon(Icons.navigate_next,
                    color: Styles.boldBlue,),
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
                              child: Icon(Icons.search,
                              color: Colors.white,),
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
        )
      ),
    );
    //   SafeArea(
    //   child: SizedBox(
    //     child: Container(
    //       height: 60,
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(15),
    //           border: Border.all(width: 2)),
    //       child: Row(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(left: 12),
    //             child: Container(
    //                 height: 50,
    //                 width: 120,
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(2),),
    //                 child: DropdownButtonHideUnderline(
    //                   child: DropdownButton(
    //                     isExpanded: true,
    //                     hint: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text('Category'),
    //                     ),
    //                     value: userId,
    //                     items: users.map((item) {
    //                       return DropdownMenuItem(
    //                         child: Container(
    //                             decoration: BoxDecoration(
    //                               borderRadius: BorderRadius.circular(2),
    //                               color: Colors.red
    //                             ),
    //                             child: Text(item['name'])),
    //                         value: item['id'].toString(),
    //                       );
    //                     }).toList(),
    //                     onChanged: (String? newValue) {
    //                       setState(() {
    //                         userId = newValue;
    //                       });
    //                     },
    //                   ),
    //                 )),
    //           ),
    //           Container(
    //               height: 50,
    //               width:100,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(2),),
    //               child: DropdownButtonHideUnderline(
    //                 child: DropdownButton(
    //                   isExpanded: true,
    //                   hint: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Text('Near'),
    //                   ),
    //                   value: nearId,
    //                   items: near.map((item) {
    //                     return DropdownMenuItem(
    //                       child: Text(item['location']),
    //                       value: item['id'].toString(),
    //                     );
    //                   }).toList(),
    //                   onChanged: (String? newValue) {
    //                     setState(() {
    //                       nearId = newValue;
    //                     });
    //                   },
    //                 ),
    //               )),
    //           Container(
    //               height: 50,
    //               width: 100,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(2),
    //                   ),
    //               child: DropdownButtonHideUnderline(
    //                 child: DropdownButton(
    //                   isExpanded: true,
    //                   hint: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Text('Deals'),
    //                   ),
    //                   value: dealsId,
    //                   items: deals.map((item) {
    //                     return DropdownMenuItem(
    //                       child: Text(item['deals']),
    //                       value: item['id'].toString(),
    //                     );
    //                   }).toList(),
    //                   onChanged: (String? newValue) {
    //                     setState(() {
    //                       dealsId = newValue;
    //                     });
    //                   },
    //                 ),
    //               )),
    //           Spacer(),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               GestureDetector(
    //                 onTap: () {},
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.only(
    //                       topRight: Radius.circular(10),
    //                       bottomRight: Radius.circular(10),
    //                     ),
    //                     color: Colors.red,
    //                   ),
    //                   height: 60,
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(10),
    //                     child: Icon(Icons.search),
    //                   ),
    //                 ),
    //               )
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
