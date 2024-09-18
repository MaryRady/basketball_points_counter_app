import 'package:flutter_application_1/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void increment({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      //update ui
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      //update ui
      emit(CounterBIncrementState());
    }
  }

  void Reset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAIncrementState());
    
  }
}
