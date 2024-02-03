import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../helper/global_colors.dart';

class PanelTest extends StatefulWidget {
  final PanelController? pc;
  final String? name;

  const PanelTest({
    Key? key,
    this.pc,
    this.name,
  }) : super(key: key);

  @override
  _PanelTest createState() => _PanelTest();
}

class _PanelTest extends State<PanelTest> {
  GlobalColors globalColors = GlobalColors();

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: globalColors.baseDark, width: 0.5),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "Panel Test",
            style: TextStyle(
                fontSize: 18,
                color: globalColors.baseDark,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
