import 'package:flutter/material.dart';
import 'package:slicing/component/slidding_up_panel/panel_test.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../helper/global_colors.dart';

class PageTest3 extends StatefulWidget {
  const PageTest3({super.key});

  @override
  State<PageTest3> createState() => _PageTest3State();
}

class _PageTest3State extends State<PageTest3> {
  GlobalColors globalColors = GlobalColors();
  PanelController pc = PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalColors.netral100,
      body: SafeArea(
        child: SlidingUpPanel(
          panelBuilder: (ScrollController sc) => PanelTest(pc: pc),
          controller: pc,
          isDraggable: true,
          maxHeight: MediaQuery.of(context).size.height * 0.4,
          minHeight: 0,
          backdropEnabled: true,
          backdropTapClosesPanel: true,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          body: Center(
              child: GestureDetector(
            onTap: () {
              pc.open();
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
                    'Panel Test',
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
        ),
      ),
    );
  }
}
