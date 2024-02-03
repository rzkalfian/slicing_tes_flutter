import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../helper/global_colors.dart';

class CardProgress extends StatefulWidget {
  const CardProgress({super.key});

  @override
  State<CardProgress> createState() => _CardProgressState();
}

class _CardProgressState extends State<CardProgress> {
  GlobalColors globalColors = GlobalColors();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: globalColors.baseWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/image/Progress_Success.svg",
                    color: globalColors.baseDark,
                  ),
                  Text(
                    'Pemesanan',
                    style: TextStyle(
                      color: globalColors.baseDark,
                      fontSize: 10,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/image/Progress_Success.svg",
                    color: globalColors.baseDark,
                  ),
                  Text(
                    'Administrasi',
                    style: TextStyle(
                      color: globalColors.baseDark,
                      fontSize: 10,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/image/Progress_Load.svg",
                    // color: globalColors.baseDark,
                  ),
                  Text(
                    'Pembangunan',
                    style: TextStyle(
                      color: globalColors.baseDark,
                      fontSize: 10,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/image/Progress.svg",
                    // color: globalColors.baseDark,
                  ),
                  Text(
                    'Serah Terima',
                    style: TextStyle(
                      color: globalColors.baseDark,
                      fontSize: 10,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
