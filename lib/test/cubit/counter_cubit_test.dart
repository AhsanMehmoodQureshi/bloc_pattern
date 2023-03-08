
import 'dart:io';

import 'package:bloc_pattern/cubit_test/counter_cubit.dart';
import 'package:bloc_pattern/cubit_test/counter_state.dart';
import 'package:test/test.dart';

void main(){
  // group('',(){
  //   CounterCubit counterCubit;
  // });
  group('CounterCubit',(){
    CounterCubit counterCubit;
    setUp((){
      counterCubit=CounterCubit();
    });
    tearDown(() {
      counterCubit.close();
    });
    test('the initial state for the CounterCubit is CounterState(counterValue:0)', () {
      expect(counterCubit.state, CounterState(counterValue: 0, wasIncrement: true));
    });
  });
}