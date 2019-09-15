const bool isProduction = bool.fromEnvironment("dart.vm.product");

const devConfig = {
  'baseUrl': 'https://min-api.cryptocompare.com',
  'apiKey': 'f928eb55d944ea61f11a788b23180a0721df43cea663d8c43e46513e0cff40ce',
};

const productionConfig = {
  'baseUrl': '',
  'apiKey': '',
};

final enviroment = isProduction ? productionConfig : devConfig;
