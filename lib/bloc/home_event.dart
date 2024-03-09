part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeEventInit extends HomeEvent {}

class LoadHomeViewEvent extends HomeEvent {}
