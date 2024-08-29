import 'package:bloc/bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)){
    on<IncrementEvent>((event, emit){
      emit(CounterState(state.count+1));
    });
    on<DescrementEvent>((event, emit){
      emit(CounterState(state.count-1));
    });
  }
}