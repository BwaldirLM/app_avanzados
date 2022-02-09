import 'package:flutter/material.dart';
import 'package:proy_avanzados/src/pages/comisaria_page.dart';

import 'package:proy_avanzados/src/pages/first_page.dart';
import 'package:proy_avanzados/src/pages/home_page.dart';
import 'package:proy_avanzados/src/pages/lista_comisarias_page.dart';
import 'package:proy_avanzados/src/pages/login_page.dart';
import 'package:proy_avanzados/src/pages/signup_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/home': (_) => HomePage(),
        '/comisaria': (_) => ComisariaPage(),
        '/lista': (_) => const ListaComisariaPage()
      },
    );
  }
}
