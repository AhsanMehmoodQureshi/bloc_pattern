

// part of 'counter_cubit.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class  CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterState(counterValue: 0, wasIncrement: false)) ;

  void increment()=> emit(CounterState(counterValue: state.counterValue+1, wasIncrement: true));

  void decrement()=> emit(CounterState(counterValue: state.counterValue-1, wasIncrement: false));

}

