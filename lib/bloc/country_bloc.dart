import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/models/country_model.dart';
import 'package:test_app/services/countries_service.dart';

part 'country_event.dart';

part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc() : super(null);

  ICountryService service = CountryService();

  @override
  Stream<CountryState> mapEventToState(CountryEvent event) async* {
    if (event is FetchAllCountriesEvent) {
      final countries = await service.fetchAllCountries();
      if (countries != null) {
        yield FetchAllCountriesState(countryModel: countries);
      }
    }
    if (event is FetchCountryByNameEvent) {
      final countries = await service.fetchCountryByName(event.name);
      if (countries != null) {
        yield FetchCountryByNameState(countryModel: countries);
      }
    }
    if (event is FetchCountryByRegionEvent) {
      final countries = await service.fetchCountryByRegion(event.region);
      if (countries != null) {
        yield FetchCountryByNameState(countryModel: countries);
      }
    }
  }
}
