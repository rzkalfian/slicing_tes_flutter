import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../helper/global_colors.dart';

class CardOffer extends StatefulWidget {
  const CardOffer({super.key});

  @override
  State<CardOffer> createState() => _CardOfferState();
}

class _CardOfferState extends State<CardOffer> {
  GlobalColors globalColors = GlobalColors();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25),
              width: 280,
              height: 144,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF334A34)),
              child: Image.asset("assets/image/Banner.png"),
            ),
            const Gap(16),
            Container(
              margin: const EdgeInsets.only(right: 25),
              width: 280,
              height: 144,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: globalColors.baseGreen),
              child: Image.asset("assets/image/Banner2.png"),
            )
          ],
        ));
  }
}
