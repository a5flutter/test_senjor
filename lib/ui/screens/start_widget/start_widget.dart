import 'package:flutter/material.dart';
import 'package:test_app/theme/text_style/text_style.dart';
import 'package:test_app/ui/common_widgets/rounded_button.dart';
import 'package:test_app/utils/screen_dimensions.dart';
import 'package:test_app/utils/resources.dart';

class StartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenDimensions.calculateMultipliers(context);
    final hMultiplier = ScreenDimensions.getInstance().getHeightMultiplier();
    final wMultiplier = ScreenDimensions.getInstance().getWidthMultiplier();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 15 * wMultiplier,
            ),
            Text(
              appName,
              style: black32Poppins400,
            ),
            Spacer(),
            IconButton(
              icon: Image.asset(
                buttonIcon,
                width: 32 * wMultiplier,
              ),
              iconSize: 32 * hMultiplier,
              onPressed: () {
                // TODO(): add action
              },
            ),
            SizedBox(
              width: 15 * wMultiplier,
            ),
          ],
        ),
        Container(
            height: 400 * hMultiplier,
            alignment: Alignment.centerRight,
            child: Image.asset(illustrationWorking)),
        Text(
          startHeader,
          style: black40Poppins400,
          textAlign: TextAlign.center,
        ),
        Text(
          appDescription,
          style: darkGray18Poppins400,
          textAlign: TextAlign.center,
        ),
        RoundedRectangleButton(onTap: () {}, label: startButtonLabel),
      ],
    );
  }
}
