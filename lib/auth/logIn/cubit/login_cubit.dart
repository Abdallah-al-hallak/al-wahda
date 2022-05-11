import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:appwrite_renew/repositoy/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LogInState> {
  final AuthRepository authRepository;
  LoginCubit({required this.authRepository}) : super(const LogInState());

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(
      state.copyWith(
        email: email,
        formzStatus: Formz.validate(
          [email, state.password],
        ),
      ),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(
      state.copyWith(
        password: password,
        formzStatus: Formz.validate(
          [state.email, password],
        ),
      ),
    );
  }

  Future<void> logIn() async {
    if (!state.formzStatus.isValidated) return;
    emit(state.copyWith(formzStatus: FormzStatus.submissionInProgress));
    try {
      Session log =
          await authRepository.logIn(state.email.value, state.password.value);

      emit(state.copyWith(formzStatus: FormzStatus.submissionSuccess));
      debugPrint(log.userId);
    } on AppwriteException catch (e) {
      emit(state.copyWith(errorMessage: e.message));
      debugPrint(e.toString());
    } catch (_) {
      emit(state.copyWith(formzStatus: FormzStatus.submissionFailure));
    }
  }
}
