part of 'login_cubit.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(FormzStatus.pure) FormzStatus formzStatus,
    String? errorMessage,
  }) = _LogInState;
}
