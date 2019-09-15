import 'package:chopper/chopper.dart';
import 'package:crypto_app/connected_interceptor.dart';

import 'env.dart';

part 'crypto_api_service.chopper.dart';

@ChopperApi(baseUrl: '/data')
abstract class CryptoApiService extends ChopperService {
  @Get(path: 'top/totalvolfull?limit=10&tsym=USD')
  Future<Response> getTop10();

  static CryptoApiService create() {
    final client = ChopperClient(
        baseUrl: enviroment['baseUrl'],
        services: [
          _$CryptoApiService(),
        ],
        converter: JsonConverter(),
        interceptors: [
          HeadersInterceptor(
              {'authorization': 'Apikey ${enviroment['apiKey']}'}),
          ConnectedInterceptor(),
        ]);

    return _$CryptoApiService(client);
  }
}
