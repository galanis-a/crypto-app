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
    final $headers = {
      'authorization':
          'Apikey f928eb55d944ea61f11a788b23180a0721df43cea663d8c43e46513e0cff40ce'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
