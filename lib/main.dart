import 'package:flutter/material.dart';
import 'package:slicing/screen/beranda/beranda.dart';

import 'screen/bottom_navigation/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Outfit',
        useMaterial3: true,
      ),
      home: BottomPageView(),
    );
  }
}
