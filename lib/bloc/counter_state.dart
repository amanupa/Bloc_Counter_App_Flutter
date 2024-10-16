part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  const CounterState({required this.counter});

  @override
  List<Object> get props => [counter];
}


/*// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  final int counter;
  const CounterState({required this.counter});

  @override
  List<Object> get props => [];

  CounterState copyWith({
    
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}

final class CounterInitial extends CounterState {
  final int counter;

  const CounterInitial({required this.counter});
}

class CounterIncrementState extends CounterState {
  final int counter;
  const CounterIncrementState({
    required this.counter,
  });

  @override
  List<Object> get props => [counter];

  CounterIncrementState copyWith({
    int? counter,
  }) {
    return CounterIncrementState(
      counter: counter ?? this.counter,
    );
  }
}

class CounterDecrementState extends CounterState {
  final int counter;
  const CounterDecrementState({
    required this.counter,
  });

  @override
  List<Object> get props => [counter];
}
*/