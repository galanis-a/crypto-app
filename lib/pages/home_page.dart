import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/crypto/bloc.dart';
import '../env.dart';
import '../model/crypto.dart';
import 'preference_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cryptoBloc = BlocProvider.of<CryptoBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CrytpoApp',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return PreferencePage();
                },
              ));
            },
          )
        ],
      ),
      body: BlocBuilder(
        bloc: cryptoBloc,
        builder: (BuildContext context, CryptoState state) {
          if (state is InitialCryptoState) {
            cryptoBloc.dispatch(GetCryptos());
          } else if (state is CryptosLoaded) {
            return RefreshIndicator(
              child: _buildCryptos(context, state.crypto.data),
              onRefresh: () {
                return _refreshCryptos(context, state);
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Future<void> _refreshCryptos(context, state) async {
    final cryptoBloc = BlocProvider.of<CryptoBloc>(context);
    cryptoBloc.dispatch(GetCryptos());
  }

  ListView _buildCryptos(BuildContext context, BuiltList<CoinData> data) {
    return ListView.builder(
      itemCount: data.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: ListTile(
            leading: CachedNetworkImage(
              imageUrl:
                  '${enviroment['imgBaseUrl']}${data[index].coinInfo.imageUrl}',
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            title: Text(
              data[index].coinInfo.fullName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(data[index].display.currency.price),
          ),
        );
      },
    );
  }
}
