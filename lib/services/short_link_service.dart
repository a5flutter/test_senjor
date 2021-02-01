import 'package:test_app/models/link_model.dart';
import 'package:test_app/repositories/short_link_repository.dart';
import 'package:test_app/utils/api_url.dart';

abstract class IShortLinkService {
  Future<LinkModel> getShortLink(String longLink);
}

class ShortLinkService extends IShortLinkService {
  ShotLinkRepository repository = ShotLinkRepository();

  @override
  Future<LinkModel> getShortLink(String longLink) async {
    final response = await repository.get('$shorten?url=$longLink');
    if (response != null){
      final LinkModel linkModel = LinkModel.fromJson(response as Map<String, dynamic>);
      return linkModel;
    }
    return null;
  }
}
