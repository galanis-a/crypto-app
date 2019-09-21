import 'package:cached_network_image/cached_network_image.dart';
import 'package:crypto_app/model/crypto.dart';
import 'package:flutter/material.dart';

import '../env.dart';

class CryptoPage extends StatelessWidget {
  final CoinData coin;

  CryptoPage(this.coin);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          coin.coinInfo.fullName,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: '${enviroment['imgBaseUrl']}${coin.coinInfo.imageUrl}',
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          Text(coin.display.currency.price),
        ],
      ),
    );
  }
}
