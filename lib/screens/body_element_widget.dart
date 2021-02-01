import 'package:flutter/material.dart';
import 'package:test_app/theme/text_style/text_style.dart';

class BodyElementWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Center(child: Text('Brand Recognition', style: black20Poppins400)),
    );
  }
}
