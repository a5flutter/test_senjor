import 'package:flutter/material.dart';
import 'package:test_app/theme/colors.dart';
import 'package:test_app/theme/text_style.dart';
import 'package:test_app/ui/details_widdget/text_span_widget.dart';

class DetailsCountryWidget extends StatelessWidget {
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
                height: MediaQuery.of(context).size.height * 0.3,
                margin:
                    EdgeInsets.only(left: 25, top: 40, right: 25, bottom: 0),
                color: Colors.lightGreen,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      EdgeInsets.only(left: 25, top: 30, right: 0, bottom: 0),
                  child: Text(
                    'Belgio',
                    style: black18Nunito_Sans800,
                  )),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 20, right: 0, bottom: 0),
                  'Native name: ',
                  'Belgium'),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Population: ',
                  'Belgium'),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Region: ',
                  'Belgium'),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Sub Region: ',
                  'Belgium'),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Capital: ',
                  'Belgium'),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 30, right: 0, bottom: 0),
                  'Top Level Domain: ',
                  'Belgium'),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Currencies: ',
                  'Belgium'),
              textSpanWidget(
                  EdgeInsets.only(left: 25, top: 10, right: 0, bottom: 0),
                  'Languages: ',
                  'Belgium'),
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
                  children: List<Widget>.generate(14, (index) {
                    return TextButton(
                      onPressed: () {},
                      child: Container(
                        margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
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
                        child: Center(child: Text('France', style: black14Nunito_Sans300)),
                      ),
                    );
                  }))
            ],
          ),
        ));
  }
}
