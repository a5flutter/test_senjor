import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/models/country_model.dart';
import 'package:test_app/services/countries_service.dart';
import 'package:test_app/theme/colors.dart';
import 'package:test_app/theme/text_style.dart';
import 'package:test_app/ui/details_widdget/text_span_widget.dart';

class DetailsCountryWidget extends StatelessWidget {
  const DetailsCountryWidget({this.country});

  final CountryModel country;

  String getCurrencies(List<Currency> currencies) {
    String currency = '';
    for (Currency tmp in currencies) {
      currency += '${tmp.name},';
    }
    return currency;
  }

  String getLanguages(List<Language> languages) {
    String language = '';
    for (Language tmp in languages) {
      language += '${tmp.name},';
    }
    return language;
  }

  CountryModel getCountryByCode(String countryCode) {
    CountryModel country;
    CountryService().fetchCountryByCode(countryCode).then((value) {
      country = value;
    });
    return country;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin:
                    EdgeInsets.only(left: 20, top: 40, right: 0, bottom: 0),
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Back',
                          style: black14Nunito_Sans300,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.3,
                margin:
                EdgeInsets.only(left: 25, top: 40, right: 25, bottom: 0),
                child: SvgPicture.network(country.flag),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin:
                  EdgeInsets.only(left: 25, top: 30, right: 0, bottom: 0),
                  child: Text(
                    country.name,
                    style: black18Nunito_Sans800,
                  )),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 20, right: 0, bottom: 0),
                  'Native name: ', country.nativeName),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Population: ', country.population.toString()),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Region: ',
                  country.region),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Sub Region: ',
                  country.subregion),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Capital: ',
                  country.capital),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 30, right: 0, bottom: 0),
                  'Top Level Domain: ',
                  country.topLevelDomain.toString()),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Currencies: ',
                  getCurrencies(country?.currencies)),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Languages: ',
                  getLanguages(country.languages)),
              Container(
                  alignment: Alignment.centerLeft,
                  margin:
                  EdgeInsets.only(left: 25, top: 40, right: 0, bottom: 0),
                  child: Text(
                    'Border Countries:',
                    style: black16Nunito_Sans600,
                  )),
              GridView.count(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  childAspectRatio: (70 / 30),
                  crossAxisCount: 3,
                  children: List<Widget>.generate(
                      country.borders.length, (index) {
                    return TextButton(
                      onPressed: () {
                        CountryModel neighbor = getCountryByCode(country?.borders[index]);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsCountryWidget(
                                      country: neighbor,
                                    )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 0, top: 0, right: 0, bottom: 0),
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                            child:
                            Text(country.borders[index],
                                style: black14Nunito_Sans300)),
                      ),
                    );
                  }))
            ],
          ),
        ));
  }
}
