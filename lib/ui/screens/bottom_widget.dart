import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/theme/colors/colors.dart';
import 'package:test_app/theme/text_style/text_style.dart';
import 'package:test_app/utils/resourse.dart';

class BottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: veryDarkViolet,
      child: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 35),
              child: Center(child: Text('Shortly', style: white32Poppins700)),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                alignment: Alignment.center,
                child: Text('Features', style: white18Poppins500)),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                child: Text('Link Shortening', style: gray18Poppins500)),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                child: Text('Branded Links', style: gray18Poppins500)),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                child: Text('Analytics', style: gray18Poppins500)),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 35, 0, 15),
              child:
              Center(child: Text('Resources', style: white18Poppins500)),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                child: Text('Blog', style: gray18Poppins500)),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                child: Text('Developers', style: gray18Poppins500)),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                child: Text('Support', style: gray18Poppins500)),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 35, 0, 15),
              alignment: Alignment.center,
              child: Text('Company', style: white18Poppins500),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                child: Text('About', style: gray18Poppins500)),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                child: Text('Our Team', style: gray18Poppins500)),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                child: Text('Careers', style: gray18Poppins500)),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 35),
                alignment: Alignment.center,
                child: Text('Contact', style: gray18Poppins500)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(iconFacebook),
                SizedBox(width: 20),
                SvgPicture.asset(iconTwitter),
                SizedBox(width: 20),
                SvgPicture.asset(iconPinterest),
                SizedBox(width: 20),
                SvgPicture.asset(iconInstagram),
              ],
            )
          ],
        ),
      ),
    );
  }
}
