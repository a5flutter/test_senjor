import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

BehaviorSubject<String> errorStreamController = BehaviorSubject<String>();

class HttpErrors{
  static void pushError(String error){
    debugPrint('Error received - $error');
    errorStreamController.add('unknownCommunicationError');
  }
}