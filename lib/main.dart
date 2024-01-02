import 'package:flutter/material.dart';
import 'package:music_app/screen/home/provider/home_provider.dart';
import 'package:music_app/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeProvider(),),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: app_routes,
    ),
  ));
}

