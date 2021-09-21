import 'package:female_test/logic/summary_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChoiceCubit extends Cubit<SummaryState> {
  ChoiceCubit() : super(SummaryState(selectedChoice: ''));

  void changeSelectedChoice(String choice) =>
      emit(SummaryState(selectedChoice: choice));
}
