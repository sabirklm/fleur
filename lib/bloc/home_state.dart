part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoadedState extends HomeState {
  final List<HomeViewModel> homePage;

  HomeLoadedState({required this.homePage});
}

final class HomeErrorState extends HomeState {
  final String message;

  HomeErrorState(this.message);
}
