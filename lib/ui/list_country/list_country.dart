import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/country_bloc.dart';
import 'package:test_app/models/country_model.dart';
import 'package:test_app/ui/details_widdget/details_country_widget.dart';
import 'package:test_app/ui/list_country/widgets/country_card.dart';

class ListCountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CountryModel> countries = [];
    bool dataIsLoaded = false;
    return BlocBuilder<CountryBloc, CountryState>(builder: (context, state) {
      if (state is FetchAllCountriesState) {
        countries = state?.countries;
        dataIsLoaded = true;
      }
      return dataIsLoaded
          ? ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: countries?.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsCountryWidget(
                                      country: countries[index],
                                    )));
                      },
                      child: CountryCard(country: countries[index])),
                );
              })
          : Center(
              child: CircularProgressIndicator(),
            );
    });
  }
}
