import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profile_menu_items_event.dart';
part 'profile_menu_items_state.dart';



class ProfileMenuItemsBloc
    extends Bloc<ProfileMenuItemsEvent, ProfileMenuItemsState> {
  ProfileMenuItemsBloc() : super(ProfileMenuItemsInitial()) {
    on<ProfileMenuItemsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
