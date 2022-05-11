part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded({
    required List<HomeModel> team,
  }) = Loaded;
  const factory HomeState.failure() = Failure;
}
