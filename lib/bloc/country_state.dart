part of 'country_bloc.dart';

abstract class CountryState extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchAllCountriesState extends CountryState {
  FetchAllCountriesState({this.countries});

  final List<CountryModel> countries;

  @override
  List<Object> get props => [countries];
}

class FetchCountryByNameState extends CountryState {
  FetchCountryByNameState({this.countryModel});

  final CountryModel countryModel;

  @override
  List<Object> get props => [countryModel];
}

class FetchCountryByRegionState extends CountryState {
  FetchCountryByRegionState({this.countryModel});

  final CountryModel countryModel;

  @override
  List<Object> get props => [countryModel];
}
