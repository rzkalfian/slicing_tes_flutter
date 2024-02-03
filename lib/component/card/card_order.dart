import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../helper/global_colors.dart';

class CardOrder extends StatefulWidget {
  const CardOrder({super.key});

  @override
  State<CardOrder> createState() => _CardOrderState();
}

class _CardOrderState extends State<CardOrder> {
  GlobalColors globalColors = GlobalColors();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
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
              '#881726478123',
              style: TextStyle(
                color: globalColors.baseDark,
                fontSize: 12,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            Container(
              width: 63,
              height: 20,
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
                        'Candra Bhirawa',
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
                        'Lotus, Kavling A1, Blok B No. 4',
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
                        '25/11/2022, 09:00',
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
                          '850.000.000',
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
        ],
      ),
    );
  }
}
