import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';

import './bloc.dart';
import '../crypto_api_service.dart';
import '../model/crypto.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  @override
  CryptoState get initialState => InitialCryptoState();

  @override
  Stream<CryptoState> mapEventToState(
    CryptoEvent event,
  ) async* {
    if (event is GetCryptos) {
      yield CryptosLoading();
      final response = await _fetchCryptosFromApi(event.sym);
      yield CryptosLoaded(response.body);
    }
  }

  Future<Response<Crypto>> _fetchCryptosFromApi(String sym) async {
    return CryptoApiService.create().getTop10(tsym: sym);
  }
}
