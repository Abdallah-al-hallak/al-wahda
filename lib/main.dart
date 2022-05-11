import 'package:appwrite/appwrite.dart';
import 'package:appwrite_renew/app/view/app.dart';
import 'package:appwrite_renew/auth/logIn/view/login_view.dart';
import 'package:appwrite_renew/repositoy/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  return BlocOverrides.runZoned(() async {
    WidgetsFlutterBinding.ensureInitialized();
    final authenticationRepository = AuthRepository(client: Client());

    // final u = await authenticationRepository.user2();
    // print(u.email);
    authenticationRepository.user;

    runApp(App(
      authenticationRepository: authenticationRepository,
    ));
  });
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const LogInView(),
//     );
//   }
// }
