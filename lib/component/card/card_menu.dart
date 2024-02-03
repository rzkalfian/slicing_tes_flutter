import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../helper/global_colors.dart';

class CardMenu extends StatefulWidget {
  String title;
  String image;
  String percent;
  Color bgImage;

  CardMenu(
      {super.key,
      required this.title,
      required this.image,
      required this.percent,
      required this.bgImage});

  @override
  State<CardMenu> createState() => _CardMenuState();
}

class _CardMenuState extends State<CardMenu> {
  GlobalColors globalColors = GlobalColors();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        if (widget.title == "Pemesanan") {
          print("Pemesanan 1");
        }
        if (widget.title == "Administrasi") {
          print("Pemesanan 2");
        }
        if (widget.title == "Pembangunan") {
          print("Pemesanan 3");
        }
        if (widget.title == "Akad & Serah Terima") {
          print("Pemesanan 4");
        } else {
          print("Title lainnya tapped!");
        }
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: widget.bgImage,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(widget.image),
                scale: 1,
                alignment: Alignment.bottomRight),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0D3F3F3F),
                blurRadius: 2.47,
                offset: Offset(0, 4.12),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x133F3F3F),
                blurRadius: 6.25,
                offset: Offset(0, 10.42),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x183F3F3F),
                blurRadius: 12.76,
                offset: Offset(0, 21.27),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x1D3F3F3F),
                blurRadius: 26.28,
                offset: Offset(0, 43.80),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x2B3F3F3F),
                blurRadius: 72,
                offset: Offset(0, 120),
                spreadRadius: 0,
              )
            ]),
        height: 154,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tahap',
                    style: TextStyle(
                      color: (widget.title == "Pemesanan")
                          ? globalColors.baseWhite
                          : globalColors.baseDark,
                      fontSize: 12,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: (widget.title == "Pemesanan")
                          ? globalColors.baseWhite
                          : globalColors.baseDark,
                      fontSize: 14,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                widget.percent,
                // fit: BoxFit.cover,
              ),
            ]),
      ),
    ));
  }
}
