// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$CryptoApiService extends CryptoApiService {
  _$CryptoApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = CryptoApiService;

  Future<Response> getTop10() {
    final $url = '/data/top/totalvolfull?limit=10&tsym=USD';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
