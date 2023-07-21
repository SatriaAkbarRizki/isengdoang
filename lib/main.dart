import 'package:flutter/material.dart';
import 'package:isengdoang/pages/home_page.dart';
import 'package:isengdoang/pages/pagetree.dart';
import 'package:isengdoang/pages/pagetwo.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: '/Home',
      routes: {
        '/Home': (context) => HomePage(),
        '/PageTwo': (context) => PageTwo(),
        '/PageTree': (context) => PageTree()
      },
    );
  }
}


/* 
  Project Iseng aja untuk pelajari hal yang lain kalau lagi kosong saja
 */