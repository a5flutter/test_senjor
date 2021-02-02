import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/country_bloc.dart';
import 'package:test_app/models/country_model.dart';

class CountryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CountryModel> countries;
    return BlocBuilder<CountryBloc, CountryState>(builder: (context, state) {
      if (state is FetchAllCountriesState) {
        countries = state?.countries;
      }
      return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: countries?.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(),
              child: Text(countries[index]?.name),
            );
          }
      );
    });
  }
}
