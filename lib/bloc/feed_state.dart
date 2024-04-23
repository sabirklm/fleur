part of 'feed_bloc.dart';

@immutable
sealed class FeedState {}

final class FeedInitial extends FeedState {}
final class FeedLoading extends FeedState {}
final class FeedLoaded extends FeedState {
  final List<FeedViewModel> feeds;
  FeedLoaded({required this.feeds});
}
final class FeedError extends FeedState {}