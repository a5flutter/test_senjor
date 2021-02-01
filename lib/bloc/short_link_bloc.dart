import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/models/link_model.dart';
import 'package:test_app/services/short_link_service.dart';

part 'short_link_event.dart';
part 'short_link_state.dart';

class ShortLinkBloc extends Bloc<ShortLinkEvent, ShortLinkState> {
  ShortLinkBloc() : super(ShortLinkInitial());

  IShortLinkService service = ShortLinkService();


  @override
  Stream<ShortLinkState> mapEventToState(ShortLinkEvent event) async* {
    if (event is GetShortLink){
      final link = await service.getShortLink(event.longLink);
      yield ShortLink(link);
    }
  }
}