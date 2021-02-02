import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/models/country_model.dart';
import 'package:test_app/theme/colors.dart';
import 'package:test_app/theme/text_style.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({this.country});

  final CountryModel country;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      color: white,
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          child: SvgPicture.network(country.flag) ?? Container(),
        ),
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Text(country.name, style: black18Nunito_Sans800)),
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Population: ', style: black14Nunito_Sans600),
                  TextSpan(text: country.population.toString(), style: black14Nunito_Sans300),
                ],
              ),
            )),
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Region: ', style: black14Nunito_Sans600),
                  TextSpan(text: country.region, style: black14Nunito_Sans300),
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
                  TextSpan(text: country.capital, style: black14Nunito_Sans300),
                ],
              ),
            )),
      ]),
    );
  }
}
