import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            colors: [
              Color(0xFF254b5b),
              Color(0xFF398d86),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, bottom: 2.0),
                    child: Text(
                      "Usuário",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w100),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    cursorWidth: 1,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(16.0),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      // Add box shadow
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, bottom: 2.0),
                    child: Text(
                      "Senha",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w100),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    cursorWidth: 1,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(16.0),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      // Add box shadow
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFF44bc6f))),
                    onPressed: () => {},
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 40, right: 40),
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                'Política de privacidade',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
