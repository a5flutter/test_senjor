part of 'country_bloc.dart';

abstract class CountryEvent extends Equatable {
  const CountryEvent();

  @override
  List<Object> get props => [];
}

class FetchAllCountriesEvent extends CountryEvent {
  @override
  List<Object> get props => [];
}

class FetchCountryByNameEvent extends CountryEvent {
  FetchCountryByNameEvent({this.name});

  final String name;

  @override
  List<Object> get props => [name];
}

class FetchCountryByRegionEvent extends CountryEvent {
  FetchCountryByRegionEvent({this.region});

  final String region;

  @override
  List<Object> get props => [region];
}
