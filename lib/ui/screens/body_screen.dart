import 'package:flutter/material.dart';
import 'package:test_app/theme/text_style/text_style.dart';
import 'package:test_app/ui/screens/body_element_widget.dart';
import 'package:test_app/utils/resourse.dart';

class BottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('Advanced Statics', style: black24Poppins500,),
          SizedBox(height: 15,),
          Text('Track how your links are performing across the web with our advanced statics dashboard.', style: gray18Poppins500, textAlign: TextAlign.center,),

          BodyElementWidget(
              firstItem: true,
              image: iconBrand,
              title: 'Brand Recognition',
              text:
                  "Boost your brand recognition with each click. Generic links don't mean a thing. Branded links help instil confidence in your content."),
          BodyElementWidget(
              image: iconDetailed,
              title: 'Detailed Records',
              text:
              'Gain insights into who is clicking your links. Knowing when and where people engage with your content helps inform better decisions.'),

          BodyElementWidget(
              image: iconCustomizable,
              title: 'Fully Customizable',
              text:
              'Improve brand awareness and content discoverability through customizable links, supercharging audience engagement'),

        ],
      ),
    );
  }
}
