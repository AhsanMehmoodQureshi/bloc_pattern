import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';
import 'counter_state.dart';

class CounterValue extends StatefulWidget {
  const CounterValue({Key? key}) : super(key: key);

  @override
  State<CounterValue> createState() => _CounterValueState();
}

class _CounterValueState extends State<CounterValue> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('CounterValue'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(child: Center(child:
                BlocBuilder<CounterCubit, CounterState>(
                    builder: (context, state) {
              return Text('Counter Value: ${state.counterValue}');
            }))),
            Expanded(child: Center(child:
                BlocListener<CounterCubit, CounterState>(
              listener: (context, state) {
                if (state.wasIncrement == true) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar( SnackBar(backgroundColor: Colors.green,
                      dismissDirection: DismissDirection.horizontal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      content: const Text('Increment')));
                }
               else if (state.wasIncrement == false) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar( SnackBar(backgroundColor: Colors.red,
                      dismissDirection: DismissDirection.horizontal,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      content: const Text('Decrement')));
                }
              },
                  child: Center(child:
                  BlocBuilder<CounterCubit, CounterState>(
                      builder: (context, state) {
                        return Text('Counter Value: ${state.counterValue}');
                      })),
            ))),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).increment();
                      },
                      child: const Icon(Icons.add),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).decrement();
                      },
                      child: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
