import 'package:flutter/material.dart';

// Personal imports
import './ui/sura_details_page.dart';
import './ui/quran_home_page.dart';
import './ui/suras_home_page.dart';
import './ui/settings_home_page.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => QuranHomePage(),
      '/suras': (context) => SurasHomePage(),
      '/sura_details': (context) => SuraDetailsPage(),
      '/settings': (context) => SettingsHomePage()
    },
  ));
}
