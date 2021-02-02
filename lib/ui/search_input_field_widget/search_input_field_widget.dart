import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/country_bloc.dart';
import 'package:test_app/theme/colors.dart';
import 'package:test_app/theme/text_style.dart';

class SearchInputFieldWidget extends StatefulWidget {

  @override
  SearchInputFieldWidgetState createState() => SearchInputFieldWidgetState();
}

class SearchInputFieldWidgetState extends State<SearchInputFieldWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Row(
        children: [
          Expanded(
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                decoration: BoxDecoration(
                  color: white,
                ),
                child: TextField(
                  style: black16Nunito_Sans600,
                  controller: _controller,
                  onSubmitted: (str){BlocProvider.of<CountryBloc>(context).add(FetchCountryByNameEvent(name: str));},
                  onChanged: (str){BlocProvider.of<CountryBloc>(context).add(FetchCountryByNameEvent(name: str));},
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                          left: 24 , right: 20  ),
                      child: Icon(Icons.search),
                    ),
                    isDense: true,
                    border: InputBorder.none,
                    hintText: 'Search for a country...',
                    hintStyle: black14Nunito_Sans300,
                    contentPadding: EdgeInsets.only(top: 15.0),
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}