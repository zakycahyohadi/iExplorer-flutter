import 'package:aspen_apk/screens/explore/explore_screen.dart';
import 'package:aspen_apk/screens/place_screen.dart';
import 'package:aspen_apk/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  ExploreScreen.routeName: (context) => const ExploreScreen(),
  PlaceScreen.routeName: (context) => const PlaceScreen(),
};

