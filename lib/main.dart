import 'package:bizlx_app/common/bottom_bar.dart';
import 'package:bizlx_app/constants/global_variables.dart';
import 'package:bizlx_app/providers/user_provider.dart';
import 'package:bizlx_app/router.dart';
import 'package:bizlx_app/views/all_account_city/screens/all_account_city.dart';
import 'package:bizlx_app/views/all_accounts_jobs/screens/all_accounts_jobs.dart';
import 'package:bizlx_app/views/all_categories/screen/all_categories.dart';
import 'package:bizlx_app/views/all_jobs/screen/all_jobs.dart';
import 'package:bizlx_app/views/auth/screens/auth_screen.dart';
import 'package:bizlx_app/views/auth/services/auth_service.dart';
import 'package:bizlx_app/views/deals_screen/screen/deal_screen_one.dart';
import 'package:bizlx_app/views/deals_screen/screen/deal_screen_two.dart';
import 'package:bizlx_app/views/deals_screen/screen/deal_screen_video.dart';

import 'package:bizlx_app/views/hotel_deal_display/screen/hotel_deal_display.dart';
import 'package:bizlx_app/views/job_inner_page/screen/job_inner_page.dart';
import 'package:bizlx_app/views/listing_profile/screens/listing_profile_screen.dart';
import 'package:bizlx_app/views/notification/screen/notifications.dart';
import 'package:bizlx_app/views/review/screen/review_form.dart';
import 'package:bizlx_app/views/review/screen/review_screen.dart';
import 'package:bizlx_app/views/wishlist/screen/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ],
      ),

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.backgroundColor,
        ),
      ),
      onGenerateRoute: ((settings) => generateRoute(settings)),
      //FOR API INTEGRATE
      // home: Scaffold(
      //   body: Provider.of<UserProvider>(context).user.token.isNotEmpty
      //       ? const BottomBar()
      //       : const AuthScreen(),
      // ),

      //ONE BY ONE SCREEN CREATED
      //BY PASS
      home: const Scaffold(
        // body: BottomBar(),
        // body: ListingProfileScreen(),
        // body: AllAccountJobs(),
        // body: AllAccountCity(),
        body: AllJobs(),
        // body: JobInnerPage(),
        // body: Wishlist(),
        // body: AllCategories(),
        // body: HotelDealDisplay(),
        // body: DealScreenOne(),
        // body: DealScreenTwo(),
        // body: DealScreenVideo(),
        // body: ReviewScreen(),
        // body: ReviewForm(),
        // body: Notifications(),
      ),
    );
  }
}
