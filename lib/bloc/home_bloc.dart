import 'package:bloc/bloc.dart';
import 'package:fleur/models/home_view_model.dart';
import 'package:fleur/models/vehicle.dart';
import 'package:fleur/services/home_view_servic.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<LoadHomeViewEvent>(_loadHomeView);
  }
  void _loadHomeView(LoadHomeViewEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    var homePage = <String, List<VehicleShortSummaries>>{};

    var data = await HomeViewService().getHomeView();

    for (var element in data) {
      var title = element.title;
      if (title != null) {
        homePage.putIfAbsent(title, () => element.vehicles ?? []);
      }
    }
    emit(HomeLoadedState(homePage: data));
    return;
  }
}
