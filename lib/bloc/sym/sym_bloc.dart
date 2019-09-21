import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class SymBloc extends Bloc<SymEvent, SymState> {
  @override
  SymState get initialState => InitialSymState();

  @override
  Stream<SymState> mapEventToState(
    SymEvent event,
  ) async* {
    if (event is SymChanged) {
      yield InitialSymState(sym: event.sym);
    }
  }
}
