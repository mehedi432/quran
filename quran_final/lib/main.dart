import 'package:flutter/material.dart';
import './ui/quran_home_page.dart';
import './ui/suras_home_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => QuranHomePage(),
      '/suras': (context) => SurasHomePage(),
    },
  ));
}
