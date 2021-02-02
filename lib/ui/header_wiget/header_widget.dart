import 'package:flutter/material.dart';
import 'package:test_app/theme/colors.dart';
import 'package:test_app/theme/text_style.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  String _dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: MediaQuery.of(context).size.width * 0.5,
      color: white,
      margin: EdgeInsets.fromLTRB(15, 40, MediaQuery.of(context).size.width * 0.5, 0),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
        hint: _dropDownValue == null
            ? Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('Filter by Region'),
            )
            : Text(
          _dropDownValue,
          style: black14Nunito_Sans300,
        ),
        isExpanded: true,
        iconSize: 30.0,
        style: TextStyle(color: Colors.blue),
        items: ['Africa', 'America', 'Asia', 'Europe', 'Oceania'].map(
              (val) {
            return DropdownMenuItem<String>(
              value: val,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(val, style: black14Nunito_Sans300),
              ),
            );
          },
        ).toList(),
        onChanged: (val) {
          setState(
                () {
              _dropDownValue = val;
            },
          );
        },
      ),
    );
  }
}
