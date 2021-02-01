part of 'short_link_bloc.dart';

abstract class ShortLinkState extends Equatable {
  @override
  List<Object> get props => [];
}

class ShortLinkInitial extends ShortLinkState {
  @override
  List<Object> get props => [];
}

class ShortLink extends ShortLinkState {
  ShortLink(this.linkModel);

  final LinkModel linkModel;

  @override
  List<Object> get props => [linkModel];
}