

import 'package:nectar/model/nectar_model.dart';

abstract class HomeState {}

class HomeLoadingState extends HomeState{}

class HomeErrorState extends HomeState{}

class HomeSuccessState extends HomeState{
  NectarModel data;

  HomeSuccessState(this.data);
}