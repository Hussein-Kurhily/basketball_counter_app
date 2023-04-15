import 'package:basketball_counter_app/cubit/couter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {

  CounterCubit() : super(CounterBEncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncrement({required String team,required int point}) {
    if (team == 'A'){
      teamAPoints+= point ;
      emit(CounterAEncrementState());
    }else {
      teamBPoints+= point ;
      emit(CounterBEncrementState());
    }
  }
  void reset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAEncrementState());
    emit(CounterAEncrementState());
  }

}