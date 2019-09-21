import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SymEvent extends Equatable {
  SymEvent([List props = const <dynamic>[]]) : super(props);
}

class SymChanged extends SymEvent {
  final String sym;

  SymChanged(this.sym) : super([sym]);
}
