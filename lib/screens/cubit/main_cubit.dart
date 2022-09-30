import 'package:bloc/bloc.dart';
import 'package:currency_converter/screens/state/main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(OnBoardingState());

  changeState(MainState state) {
    emit(state);
  }
}