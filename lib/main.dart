import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'VIEWS/detail page/detailpage.dart';
import 'VIEWS/homepage/homescreen.dart';
import 'VIEWS/one_time_intro/one_time_intro.dart';
import 'VIEWS/splash_screen/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isvisited = preferences.getBool("Isvisited") ?? false;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: (isvisited) ? '/' : 'intro',
      routes: {
        '/': (ctx) => Splacescreen(),
        'intro': (ctx) => introscreen(),
        'home': (ctx) => homescreen(),
        'detail': (ctx) => detailpage(),
      },
    ),
  );
}
