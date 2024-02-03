import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:slicing/screen/page_test/page_test_notification.dart';

import '../../helper/global_colors.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  GlobalColors globalColors = GlobalColors();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.asset(
                    "assets/image/Avatar_Image.png",
                    fit: BoxFit.cover,
                    width: 60, // Sesuaikan dengan kebutuhan
                    height: 60, // Sesuaikan dengan kebutuhan
                  ),
                ),
              ),
              const Gap(8),
              const SizedBox(
                height: 60,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Temukan hunian impian',
                      style: TextStyle(
                        color: Color(0xFF334A34),
                        fontSize: 18,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w600,
                        height: 1.05,
                      ),
                    ),
                    FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Agen Properti Terbaik',
                          style: TextStyle(
                            color: Color(0xFF7E7E7E),
                            fontSize: 12,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                            // height: 0,
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageTestNotification()),
              );
            },
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 35,
                    height: 35,
                    padding: const EdgeInsets.all(8),
                    // clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.51),
                      ),
                    ),
                    child: SvgPicture.asset(
                      "assets/image/Bell.svg",
                      color: globalColors.baseDark,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 1,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: const Text(
                      '3', // Ganti dengan angka badge Anda
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
