// ignore_for_file: no_logic_in_create_state, library_private_types_in_public_api, unused_import

import 'package:flutter/material.dart';
import 'package:slicing/screen/beranda/beranda.dart';
import 'package:slicing/screen/page_test/page_test1.dart';
import 'package:slicing/screen/page_test/page_test2.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../helper/global_colors.dart';
import '../page_test/page_test3.dart';
import '../page_test/page_test4.dart';

class BottomPageView extends StatefulWidget {
  final int initialIndex;

  BottomPageView({this.initialIndex = 0});

  @override
  _BottomPageViewState createState() =>
      _BottomPageViewState(initialIndex: initialIndex);
}

class _BottomPageViewState extends State<BottomPageView> {
  int _currentIndex = 0;
  _BottomPageViewState({int initialIndex = 0}) {
    _currentIndex = initialIndex;
  }

  final List<Widget> _children = [
    const Beranda(),
    const PageTest1(),
    const PageTest2(),
    const PageTest3(),
    const PageTest4(),
  ];

  GlobalColors globalColors = GlobalColors();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        // selectedItemColor: globalColors.baseRed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 56,
              height: 56,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: SvgPicture.asset(
                      _currentIndex == 0
                          ? "assets/icons/Home_Filled.svg"
                          : "assets/icons/Home_Broken.svg",
                      color: _currentIndex == 0
                          ? globalColors.baseDark
                          : globalColors.gray200,
                    ),
                  ),
                  Container(
                    child: _currentIndex == 0
                        ? SvgPicture.asset("assets/image/bar.svg")
                        : Container(),
                  )
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 56,
              height: 56,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: SvgPicture.asset(
                      _currentIndex == 1
                          ? "assets/icons/Building_Filled.svg"
                          : "assets/icons/Building_Broken.svg",
                      color: _currentIndex == 1
                          ? globalColors.baseDark
                          : globalColors.gray200,
                    ),
                  ),
                  Container(
                    child: _currentIndex == 1
                        ? SvgPicture.asset("assets/image/bar.svg")
                        : Container(),
                  )
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 56,
              height: 56,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: SvgPicture.asset(
                      _currentIndex == 2
                          ? "assets/icons/Document_Filled.svg"
                          : "assets/icons/Document_Broken.svg",
                      color: _currentIndex == 2
                          ? globalColors.baseDark
                          : globalColors.gray200,
                    ),
                  ),
                  Container(
                    child: _currentIndex == 2
                        ? SvgPicture.asset("assets/image/bar.svg")
                        : Container(),
                  )
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 56,
              height: 56,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: SvgPicture.asset(
                      _currentIndex == 3
                          ? "assets/icons/Cart_Filled.svg"
                          : "assets/icons/Cart_Broken.svg",
                      color: _currentIndex == 3
                          ? globalColors.baseDark
                          : globalColors.gray200,
                    ),
                  ),
                  Container(
                    child: _currentIndex == 3
                        ? SvgPicture.asset("assets/image/bar.svg")
                        : Container(),
                  )
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 56,
              height: 56,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: SvgPicture.asset(
                      _currentIndex == 4
                          ? "assets/icons/User_Filled.svg"
                          : "assets/icons/User_Broken.svg",
                      color: _currentIndex == 4
                          ? globalColors.baseDark
                          : globalColors.gray200,
                    ),
                  ),
                  Container(
                    child: _currentIndex == 4
                        ? SvgPicture.asset("assets/image/bar.svg")
                        : Container(),
                  )
                ],
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
