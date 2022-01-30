import 'package:app_voronoi/src/pages/home_page.dart';
import 'package:app_voronoi/src/pages/lista_comisarias_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:app_voronoi/src/pages/first_page.dart';
import 'package:app_voronoi/src/pages/login_page.dart';
import 'package:app_voronoi/src/pages/signup_page.dart';
import 'package:app_voronoi/src/pages/comisaria_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Voronoi',
      debugShowCheckedModeBanner: false,
      initialRoute: '/comisaria',
      routes: {
        '/': (context) => const FirstPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
<<<<<<< HEAD
        '/home' : (_) => const HomePage(),
        '/comisaria' : (_) =>  comisariaPage()

=======
        '/home': (_) => const HomePage(),
        '/lista': (_) => const ListaComisariaPage()
>>>>>>> upstream/master
      },
    );
  }
}
