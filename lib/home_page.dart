import 'package:crypto_app/model/crypto.dart';
import 'package:flutter/material.dart';
import 'package:chopper/chopper.dart';
import 'package:provider/provider.dart';

import 'crypto_api_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CrytpoApp',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _buildBody(context),
    );
  }

  FutureBuilder<Response> _buildBody(BuildContext context) {
    return FutureBuilder<Response>(
      future: Provider.of<CryptoApiService>(context).getTop10(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              ),
            );
          }

          final Crypto cryptos = snapshot.data.body;
          return _buildCryptos(context, cryptos);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  ListView _buildCryptos(BuildContext context, Crypto cryptos) {
    return ListView.builder(
      itemCount: cryptos.data.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: ListTile(
            title: Text(
              cryptos.data[index].coinInfo.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // subtitle: Text(cryptos[index]['DISPLAY']['USD']['PRICE']),
          ),
        );
      },
    );
  }
}
