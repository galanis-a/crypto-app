import 'package:chopper/chopper.dart';

part 'crypto_api_service.chopper.dart';

@ChopperApi(baseUrl: '/data')
abstract class CryptoApiService extends ChopperService {
  @Get(path: 'top/totalvolfull?limit=10&tsym=USD', headers: {
    'authorization':
        'Apikey f928eb55d944ea61f11a788b23180a0721df43cea663d8c43e46513e0cff40ce'
  })
  Future<Response> getTop10();

  static CryptoApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://min-api.cryptocompare.com',
      services: [
        _$CryptoApiService(),
      ],
      converter: JsonConverter(),
    );

    return _$CryptoApiService(client);
  }
}
