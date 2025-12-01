import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:nectar/cubit/home_state.dart';
import 'package:nectar/model/nectar_model.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoadingState()){
    getFruits();
  }

  Future<void> getFruits() async {
    try {
      Future.delayed(Duration(seconds: 1));
      final result = await rootBundle.loadString('assets/mock/mock_data.json');
      final data = json.decode(result);
      print('Resutl keldi $result');
      final  NectarModel temp =  NectarModel.fromJson(data);
      emit(HomeSuccessState(temp));
    } catch (e) {
      print(e);
      emit(HomeErrorState());
    }
  }
}
