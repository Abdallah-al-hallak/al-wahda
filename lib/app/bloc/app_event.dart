part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.logOutReq() = LogOutReq;
  const factory AppEvent.appUserChanged(Users user) = AppUserChanged;
}
