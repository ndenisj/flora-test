import 'package:female_test/logic/summary_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgeCubit extends Cubit<SummaryState> {
  AgeCubit() : super(SummaryState(selectedYear: '1990'));

  void changeSelectedYear(String year) =>
      emit(SummaryState(selectedYear: year));
}
