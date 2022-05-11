import 'dart:async';

import 'package:appwrite/models.dart';
import 'package:appwrite_renew/repositoy/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/users.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AuthRepository authRepository;
  AppBloc({required this.authRepository})
      : super(authRepository.currentUser.isEmpty
            ? const AppState.unAuthinticated()
            : AppState.authinticated(user: authRepository.currentUser)) {
    on<AppUserChanged>(_onUserChanged);
    on<LogOutReq>(_onLogoutRequested);
    _userSubscription = authRepository.user.listen(
      (user) => add(AppUserChanged(user)),
    );
  }
  late final StreamSubscription<Users> _userSubscription;
  void _onUserChanged(AppUserChanged event, Emitter<AppState> emit) {
    emit(event.user.id.isEmpty
        ? const AppState.unAuthinticated()
        : AppState.authinticated(user: event.user));
  }

  void _onLogoutRequested(LogOutReq event, Emitter<AppState> emit) {
    unawaited(authRepository.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
