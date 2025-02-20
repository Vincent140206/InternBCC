import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits() : super(InitialStates()){
    emit(WelcomeState());
  }

}