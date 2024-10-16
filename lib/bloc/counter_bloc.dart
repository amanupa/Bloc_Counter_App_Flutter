import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<IncrementedCounterEvent>(_increment);
    on<DecrementedCounterEvent>(_decrement);
  }

  void _increment(IncrementedCounterEvent event, Emitter<CounterState> emit) {
    emit(CounterState(counter: state.counter + 1));
  }

  void _decrement(DecrementedCounterEvent event, Emitter<CounterState> emit) {
    emit(CounterState(counter: state.counter - 1));
  }
}
