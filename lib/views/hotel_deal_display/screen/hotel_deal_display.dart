import 'package:bizlx_app/constants/global_variables.dart';
import 'package:bizlx_app/views/hotel_deal_display/widgets/deal_details.dart';
import 'package:bizlx_app/views/hotel_deal_display/widgets/info_hot_deals.dart';
import 'package:bizlx_app/views/hotel_deal_display/widgets/top_deal_buttons.dart';
import 'package:bizlx_app/views/hotel_deal_display/widgets/top_deal_display.dart';
import 'package:bizlx_app/views/hotel_deal_display/widgets/top_deal_subcards.dart';
import 'package:bizlx_app/views/hotel_deal_display/widgets/visit_cards.dart';
import 'package:flutter/material.dart';

class HotelDealDisplay extends StatelessWidget {
  const HotelDealDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(155),
        child: AppBar(
          elevation: 2,
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
        child: Column(children: [
          TopDealButtons(),
          TopDealDisplay(),
          TopDealSubCards(),
          InfoHotDetails(),
          DealDetails(),
          SizedBox(
            height: 10,
          ),
          VisitCard(),
        ]),
      ),
    );
  }
}
