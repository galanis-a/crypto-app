import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';

class ConnectedInterceptor extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    final connectivityResult = await Connectivity().checkConnectivity();

    final isConnected = connectivityResult != ConnectivityResult.none;

    if (!isConnected) {
      throw NotConnectedException();
    }

    return request;
  }
}

class NotConnectedException implements Exception {
  final message = 'You are not connected to the internet';

  @override
  String toString() => message;
}
