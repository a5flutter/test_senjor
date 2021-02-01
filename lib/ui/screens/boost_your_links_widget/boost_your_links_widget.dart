import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/theme/colors/colors.dart';
import 'package:test_app/theme/text_style/text_style.dart';
import 'package:test_app/utils/resources.dart';

class BoostYourLinksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double hDisplay = MediaQuery.of(context).size.height;
    double wDisplay = MediaQuery.of(context).size.width;
    return Container(
      height: hDisplay * 0.4,
      child: Stack(
        children: [
          Container(color: darkViolet),
          SvgPicture.asset(bgBoost),
          Center(child: Text('Boost your links today', style: white26Poppins700)),

          Center(child: Container(
              width: wDisplay * 0.45,
              margin: EdgeInsets.only(top: hDisplay * 0.15),
              decoration: const BoxDecoration(
                color: cyan,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: TextButton(onPressed: (){},
                  child: Text('Get Started', style: white20Poppins500))))
        ],
      ),

    );
  }
}
