import 'package:rxdart/rxdart.dart';

BehaviorSubject<String> errorStreamController = BehaviorSubject<String>();

class HttpErrors{
  static void pushError(String error){
    errorStreamController.add('unknownCommunicationError');
  }
}