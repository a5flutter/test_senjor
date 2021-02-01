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
    final LinkModel linkModel = LinkModel.fromJson(
        await repository.get('$shorten?url=$longLink',{}) as Map<String, dynamic>);

    return linkModel;
  }
}
