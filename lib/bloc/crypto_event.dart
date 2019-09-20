import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CryptoEvent extends Equatable {
  CryptoEvent([List props = const <dynamic>[]]) : super(props);
}

class GetCryptos extends CryptoEvent {
  final String sym;

  GetCryptos(this.sym) : super([sym]);
}
