import 'package:flutter/material.dart';
import 'package:target_flutter_test/src/view/login/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF398d86)),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
