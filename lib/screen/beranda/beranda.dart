import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:slicing/component/appbar/header_home.dart';
import 'package:slicing/component/card/card_offer.dart';
import 'package:slicing/component/card/card_title.dart';
import 'package:slicing/component/order/order_empty.dart';
import 'package:slicing/component/order/order_no_empty.dart';

import '../../helper/global_colors.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  GlobalColors globalColors = GlobalColors();
  String order = "ada order";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: globalColors.netral100,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const HeaderHome(),
                const Gap(30),
                const CardOffer(),
                const Gap(30),
                Expanded(
                  child: Column(
                    children: [
                      CardTitle(
                          title: "Pesanan Terbaru",
                          subtitle: "Daftar pesanan terbaru anda",
                          icon: "assets/icons/Right.svg"),
                      const Gap(20),
                      (order == "tidak ada order")
                          ? OrderNoEmpty()
                          : OrderEmpty(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
