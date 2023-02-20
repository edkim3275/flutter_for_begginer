import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningdart/constants/routes.dart';
import 'package:learningdart/home.dart';
import 'package:learningdart/services/auth/bloc/auth_bloc.dart';
import 'package:learningdart/services/auth/firebase_auth_provider.dart';
import 'package:learningdart/views/login_view.dart';
import 'package:learningdart/views/notes/create_update_note_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'MyApp',
    debugShowCheckedModeBanner: false,
    home: BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(FirebaseAuthProvider()),
      child: const HomePage(),
    ),
    routes: {
      // '/': (context) => const RegisterView(),
      createOrUpdateNoteRoute: (context) => const CreateUpdateNoteView(),
    },
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'MyApp',
//       home: HomePage(),
//     );
//   }
// }
