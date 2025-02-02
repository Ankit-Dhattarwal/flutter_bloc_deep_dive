part of 'counter_bloc.dart';

/*
 when you have a class marked as sealed,
  all its subclasses are known at compile time.
  Help to ensuring all states are handled.
 */
sealed class CounterEvent {}

/*
To make these class as final bcz these class can't not extendable or
implemented outside of these library
 */
final class CounterIncremented extends CounterEvent{}

final class CounterDecremented extends CounterEvent{}
