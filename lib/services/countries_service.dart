import 'package:test_app/models/country_model.dart';
import 'package:test_app/repositories/country_repository.dart';
import 'package:test_app/utils/api_url.dart';

abstract class ICountryService {
  Future<CountryModel> fetchAllCountries();
  Future<CountryModel> fetchCountryByName(String name);
  Future<CountryModel> fetchCountryByFullName(String fullName);
  Future<CountryModel> fetchCountryByRegion(String region);

}

class CountryService extends ICountryService {
  CountryRepository repository = CountryRepository();

  @override
  Future<CountryModel> fetchAllCountries() async {
    final response = await repository.get(all);
    if (response != null){
      final CountryModel countryModel = CountryModel.fromJson(response as Map<String, dynamic>);
      return countryModel;
    }
    return null;
  }

  @override
  Future<CountryModel> fetchCountryByName(String name) async {
    final response = await repository.get('$name/$name');
    if (response != null){
      final CountryModel countryModel = CountryModel.fromJson(response as Map<String, dynamic>);
      return countryModel;
    }
    return null;
  }

  @override
  Future<CountryModel> fetchCountryByFullName(String name) async {
    final response = await repository.get('$name/$name$countryFullName');
    if (response != null){
      final CountryModel countryModel = CountryModel.fromJson(response as Map<String, dynamic>);
      return countryModel;
    }
    return null;
  }

  @override
  Future<CountryModel> fetchCountryByRegion(String region) async {
    final response = await repository.get('$region/$region');
    if (response != null){
      final CountryModel countryModel = CountryModel.fromJson(response as Map<String, dynamic>);
      return countryModel;
    }
    return null;
  }

}
