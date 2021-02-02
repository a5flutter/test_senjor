import 'package:flutter/cupertino.dart';
import 'package:test_app/theme/text_style.dart';

Widget textSpanWidget(EdgeInsets margin, String boldText, String text) {
  return Container(
      alignment: Alignment.centerLeft,
      margin: margin,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: boldText, style: black14Nunito_Sans600),
            TextSpan(text: text, style: black14Nunito_Sans300),
          ],
        ),
      )
  );
}