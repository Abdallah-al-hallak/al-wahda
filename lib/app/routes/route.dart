import 'package:appwrite/models.dart';
import 'package:appwrite_renew/auth/logIn/view/login_view.dart';
import 'package:flutter/material.dart';

import '../../home/view/home.dart';
import '../bloc/app_bloc.dart';

List<Page> onGenerateAppViewPages(AppState state, List<Page<dynamic>> pages) {
  // switch (state) {
  //   case state.:
  //     return [HomePage.page()];
  //   case AppState.unauthenticated:
  //     return [LoginPage.page()];
  // }
  User user;
  Session session;
  return state.when(
    authinticated: (user, session) => [
      HomeView.page(),
    ],
    unAuthinticated: () => [
      LogInView.page(),
    ],
  );
}
