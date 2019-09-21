import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SymState extends Equatable {
  SymState([List props = const <dynamic>[]]) : super(props);
}

class InitialSymState extends SymState {
  final String sym;

  InitialSymState({this.sym = 'EUR'}) : super([sym]);
}
