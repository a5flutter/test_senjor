part of 'short_link_bloc.dart';

abstract class ShortLinkEvent extends Equatable {
  const ShortLinkEvent();

  @override
  List<Object> get props => [];
}

class GetShortLink extends ShortLinkEvent {
  GetShortLink(this.longLink);

  final String longLink;

  @override
  List<Object> get props => [longLink];
}