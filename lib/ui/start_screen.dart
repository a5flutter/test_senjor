import 'package:flutter/material.dart';
import 'package:test_app/utils/screen_dimensions.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenDimensions.calculateMultipliers(context);
    final hMultiplier = ScreenDimensions.getInstance().getHeightMultiplier();
    final wMultiplier = ScreenDimensions.getInstance().getWidthMultiplier();
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: Icons.,
              iconSize: ,
              onPressed: (){
                // TODO(): add cation
              },
            ),
          ],
        )
      ],
    );
  }
}
