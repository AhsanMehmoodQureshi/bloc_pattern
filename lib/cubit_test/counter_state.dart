// part of 'counter_cubit.dart';
//
// @immutable
// abstract class CounterState{}

 class CounterState {
   late int counterValue;
   bool wasIncrement;

   CounterState({
     required this.counterValue,
     required this.wasIncrement});
}