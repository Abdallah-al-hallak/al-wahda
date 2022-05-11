import 'package:appwrite/appwrite.dart';
import 'package:appwrite_renew/app/routes/auto_route.gr.dart';

import 'package:appwrite_renew/repositoy/auth_repo.dart';
import 'package:appwrite_renew/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/app_bloc.dart';

var _appRouter = AppRouter();

class App extends StatelessWidget {
  App({
    Key? key,
    required AuthRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(key: key);

  final AuthRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppBloc(
        authRepository: AuthRepository(client: Client()),
      ),
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: theme,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser:
            _appRouter.defaultRouteParser(includePrefixMatches: false));

    // return MaterialApp(
    //   theme: theme,
    //   home: FlowBuilder<AppState>(

    //     state: context.select((AppBloc bloc) => bloc.state),
    //     onGeneratePages: onGenerateAppViewPages,
    //   ),
    // );
  }
}
