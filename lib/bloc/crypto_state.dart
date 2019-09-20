import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../model/crypto.dart';

@immutable
abstract class CryptoState extends Equatable {
  CryptoState([List props = const <dynamic>[]]) : super(props);
}

class InitialCryptoState extends CryptoState {}

class CryptosLoading extends CryptoState {}

class CryptosLoaded extends CryptoState {
  final Crypto crypto;

  CryptosLoaded(this.crypto) : super([crypto]);
}
