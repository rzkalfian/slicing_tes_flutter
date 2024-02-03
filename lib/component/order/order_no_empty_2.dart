import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:slicing/component/card/card_menu.dart';
import 'package:slicing/component/card/card_order.dart';
import 'package:slicing/component/card/card_order_fines.dart';
import 'package:slicing/component/card/card_progress.dart';

import '../../helper/global_colors.dart';
import '../card/card_title.dart';

class OrderNoEmpty2 extends StatefulWidget {
  const OrderNoEmpty2({super.key});

  @override
  State<OrderNoEmpty2> createState() => _OrderNoEmpty2State();
}

class _OrderNoEmpty2State extends State<OrderNoEmpty2> {
  GlobalColors globalColors = GlobalColors();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // color: Colors.red,
        // padding: const EdgeInsets.symmetric(horizontal: 25),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            child: Column(
          children: [
            const CardProgress(),
            const Gap(10),
            const CardOrderFines(),
            const Gap(10),
            Container(
              width: 378,
              height: 3,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 19,
                    height: 3,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF334A34),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    width: 15,
                    height: 3,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFDEDDDD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    width: 15,
                    height: 3,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFDEDDDD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(25),
            CardTitle(
                title: "Menu",
                subtitle: "Daftar menu transaksi",
                icon: "assets/image/Category.svg"),
            const Gap(10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  CardMenu(
                    title: 'Pemesanan',
                    image: 'assets/image/menu1.png',
                    percent: "assets/icons/Icon100.svg",
                    bgImage: globalColors.baseDark,
                  ),
                  const Gap(10),
                  CardMenu(
                    title: 'Administrasi',
                    image: 'assets/image/menu2.png',
                    percent: "assets/icons/Icon50.svg",
                    bgImage: globalColors.baseWhite,
                  )
                ],
              ),
            ),
            const Gap(10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  CardMenu(
                    title: 'Pembangunan',
                    image: 'assets/image/menu3.png',
                    percent: "assets/icons/Icon.svg",
                    bgImage: globalColors.baseWhite,
                  ),
                  const Gap(10),
                  CardMenu(
                    title: 'Akad & Serah Terima',
                    image: 'assets/image/menu4.png',
                    percent: "assets/icons/Icon.svg",
                    bgImage: globalColors.baseWhite,
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
