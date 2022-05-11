part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.authinticated(
      {required Users user, Session? session}) = Authinticated;
  const factory AppState.unAuthinticated() = UnAuthinticated;
}
