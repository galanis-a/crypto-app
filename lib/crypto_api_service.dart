import 'package:chopper/chopper.dart';

import 'built_value_converter.dart';
import 'connected_interceptor.dart';
import 'env.dart';
import 'model/crypto.dart';

part 'crypto_api_service.chopper.dart';

@ChopperApi(baseUrl: '/data')
abstract class CryptoApiService extends ChopperService {
  @Get(path: 'top/totalvolfull')
  Future<Response<Crypto>> getTop10(
      {@Query('limit') int limit = 10, @Query('tsym') String tsym = 'EUR'});

  static CryptoApiService create() {
    final client = ChopperClient(
        baseUrl: enviroment['baseUrl'],
        services: [
          _$CryptoApiService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HeadersInterceptor(
              {'authorization': 'Apikey ${enviroment['apiKey']}'}),
          ConnectedInterceptor(),
        ]);

    return _$CryptoApiService(client);
  }
}
