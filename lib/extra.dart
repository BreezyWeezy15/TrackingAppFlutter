import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:tracking_app/ui/details_page.dart';
import 'package:tracking_app/ui/intro_page.dart';
import 'package:tracking_app/ui/splash_page.dart';
import 'package:tracking_app/ui/track_page.dart';

class Extras {
  static const String baseUrl = "https://api.ship24.com/public/v1/tracking/search";
  static const String apiKey = "apik_BwPn6OA2yE7CeZTtAwOFAyqOOeBdxS";

  static const String splashRoute = "/splash";
  static const String introRoute = "/intro";
  static const String trackingRoute = "/tracking";
  static const String detailsRoute = "/details";

  static final List<GetPage> routes = [
    GetPage(name: splashRoute, page: () => const SplashPage()),
    GetPage(name: introRoute, page: () => const IntroPage()),
    GetPage(name: trackingRoute, page: () => const TrackPage()),
    GetPage(name: detailsRoute, page: () => const DetailsPage())
  ];
  static TextStyle getMediumFont(){
    return GoogleFonts.poppins(fontWeight: FontWeight.w500);
  }
  static TextStyle getBoldFont(){
    return GoogleFonts.poppins(fontWeight: FontWeight.bold);
  }
  static Color hexToColor(String code) {
    return  Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

}
