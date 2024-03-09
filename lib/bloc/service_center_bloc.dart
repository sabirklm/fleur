import 'package:bloc/bloc.dart';
import 'package:fleur/services/service_center_service.dart';
import 'package:meta/meta.dart';
import '../models/service_center.dart';

part 'service_center_event.dart';
part 'service_center_state.dart';

class ServiceCenterBloc extends Bloc<ServiceCenterEvent, ServiceCenterState> {
  ServiceCenterBloc() : super(ServiceCenterInitial()) {
    on<GetServiceCenterEvent>(_loadServiceCenter);
  }
  _loadServiceCenter(event, emit) async {
    try {
      emit(ServiceCenterLoading());
      await Future.delayed(const Duration(seconds: 2));
      var serviceCenters = await ServiceCenterService().getServiceCenters();
      emit(ServiceCenterLoaded(serviceCenters: serviceCenters));
    } catch (e) {
      emit(ServiceCenterError(e.toString()));
    }
  }
}
