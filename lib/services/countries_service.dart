import 'package:test_app/models/country_model.dart';
import 'package:test_app/repositories/country_repository.dart';
import 'package:test_app/utils/api_url.dart';

abstract class ICountryService {
  Future<List<CountryModel>> fetchAllCountries();
  Future<List<CountryModel>> fetchCountryByName(String name);
  Future<List<CountryModel>> fetchCountryByFullName(String fullName);
  Future<List<CountryModel>> fetchCountryByRegion(String region);
  Future<CountryModel> fetchCountryByCode(String countryCode);

}

class CountryService extends ICountryService {
  CountryRepository repository = CountryRepository();

  @override
  Future<List<CountryModel>> fetchAllCountries() async {
    List<CountryModel> result = [];
    final response = await repository.get(allUrl);
    if (response != null){
      List<dynamic> list = response.data as List;
      for (dynamic tmp in list){
        result.add(CountryModel.fromJson(tmp));
      }
      return result;
    }
    return null;
  }

  @override
  Future<List<CountryModel>> fetchCountryByName(String name) async {
    List<CountryModel> result = [];
    final response = await repository.get('$countryNameUrl/$name');
    if (response != null){
      List<dynamic> list = response.data as List;
      for (dynamic tmp in list){
        result.add(CountryModel.fromJson(tmp));
      }
      return result;
    }
    return null;
  }

  @override
  Future<List<CountryModel>> fetchCountryByFullName(String name) async {
    List<CountryModel> result = [];
    final response = await repository.get('$countryFullName/$name$countryFullName');
    if (response != null){
      List<dynamic> list = response.data as List;
      for (dynamic tmp in list){
        result.add(CountryModel.fromJson(tmp));
      }
      return result;
    }
    return null;
  }

  @override
  Future<List<CountryModel>> fetchCountryByRegion(String region) async {
    List<CountryModel> result = [];
    final response = await repository.get('$regionUrl/$region');
    if (response != null){
      List<dynamic> list = response.data as List;
      for (dynamic tmp in list){
        result.add(CountryModel.fromJson(tmp));
      }
      return result;
    }
    return null;
  }

  @override
  Future<CountryModel> fetchCountryByCode(String countryCode) async {
    final response = await repository.get('$alphaUrl/$countryCode');
    if (response != null) {
      return CountryModel.fromJson(response.data as Map<String, dynamic>);
    }
    return null;
  }

}
