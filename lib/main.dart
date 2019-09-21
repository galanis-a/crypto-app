import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/crypto/bloc.dart';
import 'bloc/sym/bloc.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SymBloc>(
          builder: (BuildContext context) => SymBloc(),
        ),
        BlocProvider<CryptoBloc>(
          builder: (BuildContext context) =>
              CryptoBloc(symBloc: BlocProvider.of<SymBloc>(context)),
        ),
      ],
      child: MaterialApp(
        title: 'CryptoApp',
        home: HomePage(),
      ),
    );
  }
}
