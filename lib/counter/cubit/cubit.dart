import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bmi_calc/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super(CounterInitialState());

  // CounterCubit cubit = BlocProvider.of(context);
  
  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 1 ;

  void minus ()
  {
    counter--;
    emit(CounterMinusStates(counter));
  }

  void plus ()
  {
    counter++;
    emit(CounterPlusStates(counter));
  }
}