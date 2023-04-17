import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String uri = "http://192.168.29.31:3000";

//Bizlx Primary Color
const primary = Colors.white;

class GlobalVariables {
  static const Color blueColor = Color(0xff0165A3);
  static const Color redColor = Color(0xffFD0606);

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);

  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

  //Bizlx Color
  static Color boldRed = const Color(0xFFFD0807);
  static Color boldBlue = const Color(0xFF01579B);
  static Color boldBlack = const Color(0xFF000000);
  static Color lightRed = const Color(0xFFFD0606); //for text
  static Color lightBlue = const Color(0xFF0165A3);
  static Color greenColor = const Color(0xFF25D366);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundColor =
      Color(0xffebecee); //for text and button

//Bizlx TEXT AND SIZE OF TEXT
  //FOR TEXT SIZE
  //TEXT FOR 12 PX
  static TextStyle heading1 = const TextStyle(
      fontSize: 12, color: primary, fontWeight: FontWeight.w700);

  static TextStyle heading2 = const TextStyle(
      fontSize: 12, color: primary, fontWeight: FontWeight.w400);
  //TEXT FOR 10 PX
  static TextStyle heading3 = const TextStyle(
      fontSize: 10, color: primary, fontWeight: FontWeight.w400);
  //TEXT FOR 16 PX
  static TextStyle heading4 = const TextStyle(
      fontSize: 16, color: primary, fontWeight: FontWeight.w400);
  static TextStyle heading5 = const TextStyle(
      fontSize: 16, color: primary, fontWeight: FontWeight.w500);
  static TextStyle heading8 = const TextStyle(
      fontSize: 16, color: primary, fontWeight: FontWeight.w700);

  //TEXT FOR 18 PX
  static TextStyle heading6 = const TextStyle(
      fontSize: 18, color: primary, fontWeight: FontWeight.w500);
  static TextStyle heading7 = const TextStyle(
      fontSize: 18, color: primary, fontWeight: FontWeight.w500);

//SEARCH LIST
  static const List<String> items = [
    "Follow",
    "Github",
    "Medium",
    "LinkedIn",
  ];

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
  ];

  static const List<Map<String, String>> hotelImages = [
    {
      'title': 'Loan',
      'image': 'assets/images/hotels_icons/Rectangle 14 (1).png',
    },
    {
      'title': 'Loan',
      'image': 'assets/images/hotels_icons/Rectangle 14.png',
    },
  ];

  static const List<Map<String, String>> Icons = [
    {
      'title': 'Loan',
      'image': 'assets/images/hotels_icons/Rectangle 14 (1).png',
    },
    {
      'title': 'Loan',
      'image': 'assets/images/hotels_icons/Rectangle 14.png',
    },
  ];
//Whatsapp icon and call icon
  static List<Map<String, String>> fontIcons = [
    {
      'title': 'Loan',
      'image': 'assets/images/contact_us/whatsapp.png',
    },
    {
      'title': 'Loan',
      'image': 'assets/images/contact_us/phonecall.png',
    },
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Loan',
      'image': 'assets/images/icons/1 7.png',
    },
    {
      'title': 'Buffet',
      'image': 'assets/images/icons/2 1.png',
    },
    {
      'title': 'Restaurant',
      'image': 'assets/images/icons/3 1.png',
    },
    {
      'title': 'Salon',
      'image': 'assets/images/icons/4 1.png',
    },
    {
      'title': 'Health',
      'image': 'assets/images/icons/5 1.png',
    },
    {
      'title': 'Spa',
      'image': 'assets/images/icons/1 7.png',
    },
    {
      'title': 'Shopping',
      'image': 'assets/images/icons/2 1.png',
    },
    {
      'title': 'B2B',
      'image': 'assets/images/icons/6 1.png',
    },
    {
      'title': 'Education',
      'image': 'assets/images/icons/4 1.png',
    },
    {
      'title': 'Travel',
      'image': 'assets/images/icons/2 1.png',
    },
    {
      'title': 'Contractors',
      'image': 'assets/images/icons/6 1.png',
    },
    {
      'title': 'Doctors',
      'image': 'assets/images/icons/4 1.png',
    },
  ];

  //City Deals Image
  static const List<Map<String, String>> cityDeals = [
    {
      'title': "Shimla",
      'image': "asstes/images/city_deals/Rectangle 29.png",
    },
    {
      'title': "Manali",
      'image': "asstes/images/city_deals/Rectangle 29 (1).png",
    }
  ];

  //JOBS INFO
  static const List<Map<String, String>> jobsInfo = [
    {
      'title': "Manager",
      'image': "assets/images/jobs_icons/logo image.png",
    },
    {
      'title': "Staff",
      'image': "assets/images/jobs_icons/logo image (1).png",
    },
    {
      'title': "Peon",
      'image': "assets/images/jobs_icons/logo image (2).png",
    },
  ];
}
