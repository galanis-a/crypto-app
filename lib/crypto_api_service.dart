import 'package:chopper/chopper.dart';
import 'package:crypto_app/connected_interceptor.dart';

import 'env.dart';

part 'crypto_api_service.chopper.dart';

@ChopperApi(baseUrl: '/data')
abstract class CryptoApiService extends ChopperService {
  @Get(path: 'top/totalvolfull')
  Future<Response> getTop10(
      {@Query('limit') int limit = 10, @Query('tsym') String tsym = 'USD'});

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
