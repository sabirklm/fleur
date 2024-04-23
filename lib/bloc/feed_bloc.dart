import 'package:bloc/bloc.dart';
import 'package:fleur/models/media.dart';
import 'package:fleur/services/feed_service.dart';
import 'package:meta/meta.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(FeedInitial()) {
    on<FeedEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<FeedGetEvent>((event, emit) async{
      emit(FeedLoading());
     
      var allFeeds=await FeedService().getFeeds();
     
      try {
        emit(
          FeedLoaded(
            feeds: [...allFeeds],
          ),
        );
      } catch (e) {
        emit(FeedError());
      }
    });
  }
}
