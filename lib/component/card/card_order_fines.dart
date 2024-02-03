import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../helper/global_colors.dart';

class CardOrderFines extends StatefulWidget {
  const CardOrderFines({super.key});

  @override
  State<CardOrderFines> createState() => _CardOrderFinesState();
}

class _CardOrderFinesState extends State<CardOrderFines> {
  GlobalColors globalColors = GlobalColors();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: globalColors.baseWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              '#881726478124',
              style: TextStyle(
                color: globalColors.baseDark,
                fontSize: 12,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: globalColors.baseGreen,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                'Komersil',
                style: TextStyle(
                  color: globalColors.baseWhite,
                  fontSize: 12,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            )
          ]),
          const Gap(10),
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset("assets/image/Image.png"),
                  ),
                  const Gap(4),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/house-2.svg",
                            color: globalColors.baseDark,
                          ),
                          Text(
                            'Bukit Raya Residance',
                            style: TextStyle(
                              color: globalColors.baseDark,
                              fontSize: 12,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          // Expanded(child: Container(color: Colors.red)),
                        ],
                      )),
                      const Gap(5),
                      Expanded(
                          child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/location.svg",
                            color: globalColors.baseDark,
                          ),
                          Text(
                            'Jaguar, Kavling A1, Blok D',
                            style: TextStyle(
                              color: globalColors.baseDark,
                              fontSize: 12,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          // Expanded(child: Container(color: Colors.red)),
                        ],
                      )),
                      const Gap(5),
                      Expanded(
                          child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/Calendar.svg",
                            color: globalColors.baseDark,
                          ),
                          Text(
                            '25/12/2023, 09:00',
                            style: TextStyle(
                              color: globalColors.baseDark,
                              fontSize: 12,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          // Expanded(child: Container(color: Colors.red)),
                        ],
                      )),
                      const Gap(4),
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(
                          left: 5,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Rp',
                              style: TextStyle(
                                color: globalColors.baseDark,
                                fontSize: 12,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            const Gap(4),
                            Text(
                              '985.799.300',
                              style: TextStyle(
                                color: globalColors.baseDark,
                                fontSize: 14,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            // Expanded(child: Container(color: Colors.red)),
                          ],
                        ),
                      )),
                    ],
                  )),
                ],
              )),
          const Gap(10),
          Dash(
              direction: Axis.horizontal,
              dashLength: 2,
              dashColor: globalColors.gray300,
              length: 280),
          const Gap(10),
          Expanded(
            flex: 1,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/image/frame.svg",
                        color: globalColors.baseDark,
                      ),
                      Gap(5),
                      Text(
                        'Denda Rp',
                        style: TextStyle(
                          color: globalColors.baseDark,
                          fontSize: 12,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const Gap(2),
                      Text(
                        '8.550.000',
                        style: TextStyle(
                          color: globalColors.baseDark,
                          fontSize: 14,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      // Expanded(child: Container(color: Colors.red)),
                    ],
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    // height: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: globalColors.baseDark,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/image/Danger.svg",
                          color: globalColors.baseWhite,
                        ),
                        Gap(2),
                        Text(
                          'Terlambat 7 Hari',
                          style: TextStyle(
                            color: globalColors.baseWhite,
                            fontSize: 12,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
