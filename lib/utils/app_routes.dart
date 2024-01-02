import 'package:flutter/cupertino.dart';
import 'package:music_app/screen/home/view/home_screen.dart';
import 'package:music_app/screen/splesh/view/splesh_screen.dart';

Map<String,WidgetBuilder> app_routes =
{
  '/' : (context) => const SpleshScreen(),
  'home' : (context) => const HomeScreen(),
};