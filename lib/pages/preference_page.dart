import 'package:crypto_app/currencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/crypto/bloc.dart';
import '../bloc/sym/bloc.dart';

class PreferencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Preferences',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: Currencies.values.length,
        itemBuilder: (context, index) {
          final currency = Currencies.values[index];

          return Card(
            child: ListTile(
              leading: Icon(currenciesData[currency]['icon'] as IconData),
              title: Text(currenciesData[currency]['name']),
              onTap: () {
                BlocProvider.of<SymBloc>(context)
                    .dispatch(SymChanged(currenciesData[currency]['sym']));
                BlocProvider.of<CryptoBloc>(context).dispatch(GetCryptos());
                Navigator.of(context).pop();
              },
            ),
          );
        },
      ),
    );
  }
}
