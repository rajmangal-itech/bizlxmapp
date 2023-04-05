import 'package:bizlx_mobile_app/_widgets/grid_Widget.dart';
import 'package:bizlx_mobile_app/screens/Ui/Alljobview/all_jobs.dart';
import 'package:bizlx_mobile_app/screens/bottom_bar.dart';
import 'package:bizlx_mobile_app/screens/Ui/Categoryallview/categories_all.dart';
import 'package:bizlx_mobile_app/screens/Ui/Citydeals/city_deals.dart';
import 'package:bizlx_mobile_app/screens/Ui/homeview/home_screen.dart';
import 'package:bizlx_mobile_app/screens/Ui/Hoteldealview/hotel_deal_display.dart';
import 'package:bizlx_mobile_app/screens/Ui/Hotelscreenview/hotel_screen.dart';
import 'package:bizlx_mobile_app/screens/Ui/Infoscreenview/info_screens.dart';
import 'package:bizlx_mobile_app/screens/Ui/Jobdescriptionview/job_descriptions.dart';
import 'package:bizlx_mobile_app/screens/Ui/Jobsearchview/job_search.dart';
import 'package:bizlx_mobile_app/screens/Ui/Jobinfodetailsview/job_info_details.dart';
import 'package:bizlx_mobile_app/screens/Ui/Notificationview/notifications.dart';
import 'package:bizlx_mobile_app/screens/Ui/Review_screen_view/review_screen2.dart';
import 'package:bizlx_mobile_app/screens/Ui/Wishlistview/wishlist_page.dart';
import 'package:bizlx_mobile_app/utills/app_bar_header.dart';
import 'package:bizlx_mobile_app/utills/headers_app.dart';
import 'package:bizlx_mobile_app/utills/search_bar.dart';
import 'package:flutter/material.dart';

import 'screens/Ui/ListingProfile/listing_profile_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Inter'
      ),
     
      // home: VideoPlayerApp(),
      // home:SearchBar(),
      // home: HeadersApp(),
      // home: const BottomBar(),
      // home: HomeScreen(),
      // home: HotelScreen(),
      // home: CityDeals(),
      // home: InfoScreens(),
      home: ListingProfile(),
      // home: JobSearch(),
      // home:JobInfoDetails()
      // home: AllJobs(),
      // home: JobDescriptions(),
      // home: WishlistPage(),
      /*---------------------*/
      // home:CategoriesAll()
      // home: HotelDealDisplay(),
      // home:DealDisplay()
      // home: DealsScreen(),
      // home: DealsScreen2(),
      // home: DealDisplay2(),
      // home: ReviewScreen(),[
      // home: ReviewScreen2(),
      // home: Notifications(),
    );
  }
}
