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

  Future<Response> getTop10({int limit = 10, String tsym = 'USD'}) {
    final $url = '/data/top/totalvolfull';
    final Map<String, dynamic> $params = {'limit': limit, 'tsym': tsym};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
