import 'package:bizlx_app/constants/global_variables.dart';
import 'package:bizlx_app/providers/user_provider.dart';
import 'package:bizlx_app/views/home/widgets/follow_bizlx.dart';
import 'package:bizlx_app/views/home/widgets/hotel.dart';
import 'package:bizlx_app/views/home/widgets/hotel_lists.dart';
import 'package:bizlx_app/views/home/widgets/jewellery.dart';
import 'package:bizlx_app/views/home/widgets/jobs_categories.dart';
import 'package:bizlx_app/views/home/widgets/top_ads.dart';
import 'package:bizlx_app/views/home/widgets/top_icons_categories.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";
  final Function(String?)? onChanged;
  const HomeScreen({super.key, this.onChanged});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  final List<String> items = [
    "Follow",
    "Github",
    "Medium",
    "LinkedIn",
  ];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    //FOR PROVIDER
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppBar(
            elevation: 0,
            // toolbarHeight: 200,
            flexibleSpace: Container(
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/logo/logo1.png',
                          height: 50,
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: GlobalVariables.redColor,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'List Business',
                          ),
                        ),
                        const Spacer(),
                        Image.asset("assets/images/logo/bell-icon 1.png")
                      ],
                    ),
                    Container(
                      height: 60,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 16.0),
                                  hintText: 'Category',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 50,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 16.0),
                                  hintText: 'Near',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 16.0),
                                  hintText: 'Deals',
                                ),
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(16.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: const BoxDecoration(
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
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 10,
              ),
              TopIconsCategories(),
              TopAds(),
              JobsCategories(),
              Hotels(),
              SizedBox(
                height: 10,
              ),
              HotelList(),
              Jewellery(),
              FollowBizlx()
            ],
          ),
        )
        //  Center(
        //   child: Text(
        //     user.toJson(),
        //     style: TextStyle(
        //       fontSize: 18,
        //       fontWeight: FontWeight.w900,
        //     ),
        //   ),
        // ),
        );
  }
}
