// 이벤트 정의

part of 'counter_bloc.dart';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DescrementEvent extends CounterEvent {}