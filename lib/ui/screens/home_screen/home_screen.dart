import 'package:flutter/material.dart';
import 'package:test_app/theme/text_style.dart';
import 'package:test_app/ui/header_wiget/header_widget.dart';
import 'package:test_app/ui/list_country/list_country.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Where in the world?',
              style: black16Nunito_Sans600,
            ),
            actions: [
              Icon(
                Icons.wb_sunny,
                color: Colors.black,
                size: 20,
              ),
              SizedBox(width: 5),
              Center(
                  child: Text(
                'Dark Mode',
                style: black14Nunito_Sans300,
              )),
              SizedBox(width: 15)
            ]),
        body: ListView(
          children: [
            HeaderWidget(),
            ListCountry(),
          ],
        ));
  }
}
