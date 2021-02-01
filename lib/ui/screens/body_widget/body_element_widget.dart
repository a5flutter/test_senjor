import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/theme/colors/colors.dart';
import 'package:test_app/theme/text_style/text_style.dart';

class BodyElementWidget extends StatelessWidget {
  const BodyElementWidget({this.firstItem = false, this.image, this.text, this.title});

  final bool firstItem;
  final String image;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    double hDisplay = MediaQuery.of(context).size.height;
    double wDisplay = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: hDisplay * 0.1,
                width: wDisplay * 0.02,
                color: firstItem ? null : cyan,
              ),
              Container(
                height: hDisplay * 0.35,
                width: wDisplay * 0.9,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: hDisplay * 0.09),
                        child: Text(title,
                            style: black20Poppins500)),
                    Container(
                        margin: EdgeInsets.all(hDisplay * 0.03),
                        child: Text(
                          text,
                          style: gray18Poppins500,
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: wDisplay * 0.9 / 2 - 35,
            top: hDisplay * 0.05,
            child: ClipOval(
              child: Container(
                height: 70,
                width: 70,
                color: darkViolet,
                child: SizedBox(
                  height: 20,
                  width: 35,
                  child: SvgPicture.asset(
                    image,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
