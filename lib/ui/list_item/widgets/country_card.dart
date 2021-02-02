import 'package:flutter/material.dart';
import 'package:test_app/theme/colors.dart';
import 'package:test_app/theme/text_style.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({this.image, this.name, this.capital, this.population, this.region});

  final String image;
  final String name;
  final String population;
  final String region;
  final String capital;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      color: white,
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          color: Colors.deepOrange,
        ),
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Text(name, style: black18Nunito_Sans300)),
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Population: ', style: black14Nunito_Sans600),
                  TextSpan(text: population, style: black14Nunito_Sans300),
                ],
              ),
            )
        ),
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Region: ', style: black14Nunito_Sans600),
                  TextSpan(text: region, style: black14Nunito_Sans300),
                ],
              ),
            )),
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Capital: ', style: black14Nunito_Sans600),
                  TextSpan(text: capital, style: black14Nunito_Sans300),
                ],
              ),
            )),
      ]),
    );
  }
}
