import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:crypto_app/bloc/sym/sym_bloc.dart';
import 'package:crypto_app/bloc/sym/sym_state.dart';
import 'package:meta/meta.dart';

import './bloc.dart';
import '../../crypto_api_service.dart';
import '../../model/crypto.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  CryptoApiService service;

  final SymBloc symBloc;

  @override
  CryptoState get initialState => InitialCryptoState();

  CryptoBloc({@required this.symBloc});

  @override
  Stream<CryptoState> mapEventToState(
    CryptoEvent event,
  ) async* {
    if (event is GetCryptos) {
      yield CryptosLoading();
      final response = await _fetchCryptosFromApi(
          (symBloc.currentState as InitialSymState).sym);
      yield CryptosLoaded(response.body);
    }
  }

  Future<Response<Crypto>> _fetchCryptosFromApi(String sym) async {
    return _getService().getTop10(tsym: sym);
  }

  CryptoApiService _getService() {
    if (service == null) {
      service = CryptoApiService.create();
    }

    return service;
  }

  @override
  void dispose() {
    super.dispose();
    service.dispose();
  }
}
