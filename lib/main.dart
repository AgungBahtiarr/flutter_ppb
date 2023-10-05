import 'package:flutter/material.dart';
import 'package:flutter_ppb/screens/login_event.dart';
import 'package:flutter_ppb/screens/register_event.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginEvent(),
        '/register_event': (context) => const RegisterEvent(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
