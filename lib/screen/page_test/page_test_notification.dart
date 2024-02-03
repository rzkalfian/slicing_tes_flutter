import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../helper/global_colors.dart';
import '../bottom_navigation/bottom_navigation_bar.dart';

class PageTestNotification extends StatefulWidget {
  const PageTestNotification({super.key});

  @override
  State<PageTestNotification> createState() => _PageTestNotificationState();
}

class _PageTestNotificationState extends State<PageTestNotification> {
  GlobalColors globalColors = GlobalColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalColors.netral100,
      body: Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomPageView()),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.56,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              color: globalColors.baseDark,
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Back Home',
                style: TextStyle(
                  color: globalColors.baseWhite,
                  fontSize: 16,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
