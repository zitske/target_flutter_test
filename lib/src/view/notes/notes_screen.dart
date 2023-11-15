import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key, required this.user});

  final String user;

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
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
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 500,
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('$index sheep'),
                          trailing: SizedBox(
                            width: 60,
                            height: 20,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                      onTap: () {},
                                      child: const Icon(Icons.edit)),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.cancel,
                                      color: Colors.red,
                                    ),
                                  )
                                ]),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    onEditingComplete: () {},
                    cursorColor: Colors.black,
                    cursorWidth: 1,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Digite seu texto",
                      hintStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(16.0),

                      // Add box shadow
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
