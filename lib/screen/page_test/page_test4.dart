import 'package:flutter/material.dart';

import '../../helper/global_colors.dart';

class PageTest4 extends StatefulWidget {
  const PageTest4({super.key});

  @override
  State<PageTest4> createState() => _PageTest4State();
}

class _PageTest4State extends State<PageTest4> {
  GlobalColors globalColors = GlobalColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalColors.netral100,
      body: Center(child: Text("tesss 4")),
    );
  }
}
