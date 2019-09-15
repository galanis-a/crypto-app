import 'package:crypto_app/crypto_api_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      builder: (_) => CryptoApiService.create(),
      dispose: (context, CryptoApiService service) => service.client.dispose(),
      child: MaterialApp(
        title: 'CryptoApp',
        home: HomePage(),
      ),
    );
  }
}
