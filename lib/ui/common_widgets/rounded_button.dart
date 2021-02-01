import 'package:flutter/material.dart';
import 'package:test_app/theme/colors/colors.dart';
import 'package:test_app/theme/text_style/text_style.dart';
import 'package:test_app/utils/screen_dimensions.dart';

class RoundedRectangleButton extends StatelessWidget {
  RoundedRectangleButton({this.onTap, this.label});

  final Function() onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    ScreenDimensions.calculateMultipliers(context);
    final hMultiplier = ScreenDimensions.getInstance().getHeightMultiplier();
    final wMultiplier = ScreenDimensions.getInstance().getWidthMultiplier();
    return FlatButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25 * wMultiplier)),
        color: cyan,
        minWidth: MediaQuery.of(context).size.width * 0.5,
        height: 50 * hMultiplier,
        child: Text(label, style: white20Poppins400),
        );
  }
}
