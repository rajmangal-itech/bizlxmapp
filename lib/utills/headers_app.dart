import 'package:bizlx_mobile_app/screens/Ui/homeview/home_screen.dart';
import 'package:bizlx_mobile_app/screens/Ui/Hotelscreenview/hotel_screen.dart';
import 'package:bizlx_mobile_app/utills/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadersApp extends StatefulWidget {
  const HeadersApp({Key? key}) : super(key: key);

  @override
  State<HeadersApp> createState() => _HeadersAppState();
}

class _HeadersAppState extends State<HeadersApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight:160,
         flexibleSpace:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    child: const Text('List Business'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Styles.redButton,
                        shape: const StadiumBorder()),
                  )),
                  Spacer(),
                  Container(
                      child: IconButton(
                    icon: Icon(Icons.navigate_next,
                    color: Styles.boldBlue,),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HotelScreen()));
                    },
                  ))
                ],
              ),
            ),
            // SizedBox(
            //   height:1,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height:60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
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
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color:Styles.redButton,
                            ),
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text('Submit',style: Styles.heading3,),
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
    );
  }
}
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
//                 ),
// ),
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
