import 'package:bloc01/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({
    super.key,
  });

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Center(
                child: Text(
                  "${state.counter}",
                  style: const TextStyle(fontSize: 60),
                ),
              );
            },
          ),
          /*BlocConsumer<CounterBloc, CounterState>(
            listener: (context, state) {
              if (state is CounterIncrementState) {
                print(state.counter);

                counter = state.counter;
              }
              if (state is CounterDecrementState) {
                print(state.counter);

                counter = state.counter;
              }
            },
            builder: (context, state) {
              return Center(
                child: Text(
                  "$counter",
                  style: TextStyle(fontSize: 60),
                ),
              );
            },
          ),*/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementedCounterEvent());
                },
                child: const Text("Increment"),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(DecrementedCounterEvent());
                },
                child: const Text("Decrement"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
