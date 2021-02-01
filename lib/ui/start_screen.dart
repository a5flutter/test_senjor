import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/ui/common_widgets/rounded_buttons.dart';
import 'package:test_app/utils/screen_dimensions.dart';
import 'package:test_app/utils/resources.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenDimensions.calculateMultipliers(context);
    final hMultiplier = ScreenDimensions.getInstance().getHeightMultiplier();
    final wMultiplier = ScreenDimensions.getInstance().getWidthMultiplier();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 15 * wMultiplier,
            ),
            // add style
            Text(appName),
            Spacer(),
            IconButton(
              icon: Image.asset(buttonIcon),
              iconSize: 32 * hMultiplier,
              onPressed: () {
                // TODO(): add cation
              },
            ),
            SizedBox(
              width: 15 * wMultiplier,
            ),
          ],
        ),
        SvgPicture.asset(illustrationWorking),
        Text(startHeader),
        Text(appDescription),
        RoundedRectangleButton(onTap: () {}, label: startButtonLabel),
      ],
    );
  }
}
