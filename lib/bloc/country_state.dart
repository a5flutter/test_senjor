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

class ProcessCountryState extends CountryState {

  @override
  List<Object> get props => [];
}

