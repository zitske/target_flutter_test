import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:target_flutter_test/data.dart';
import 'package:target_flutter_test/src/controller/notes/notes_controller.dart';
import 'package:target_flutter_test/src/view/notes/components/alertDialog.dart';

final data = Data();

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key, required this.user});

  final String user;

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
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
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 350),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 350,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border.fromBorderSide(BorderSide.none),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Observer(
                        builder: (_) => ListView.builder(
                          shrinkWrap: true,
                          itemCount: data.notes.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(data.notes[index]),
                              trailing: SizedBox(
                                width: 60,
                                height: 20,
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            data.editMode(data.notes[index]);
                                          },
                                          child: const Icon(Icons.edit)),
                                      const SizedBox(width: 10),
                                      InkWell(
                                        onTap: () {
                                          showMyDialog(context, index);
                                        },
                                        child: const Icon(
                                          Icons.cancel,
                                          color: Colors.red,
                                        ),
                                      )
                                    ]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        TextFormField(
                          key: formKey,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Campo obrigatório';
                            }
                            return null;
                          },
                          controller: noteTextController,
                          onFieldSubmitted: (value) {
                            data.submit();
                          },
                          cursorColor: Colors.black,
                          cursorWidth: 1,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Digite seu texto",
                            hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
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
                        Positioned(
                          right: 5,
                          top: 5,
                          child: Observer(
                              builder: (_) => Visibility(
                                    visible: data.editing,
                                    child: IconButton(
                                        onPressed: () {
                                          data.cancel();
                                        },
                                        icon: const Icon(
                                          Icons.cancel,
                                          color: Colors.red,
                                        )),
                                  )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Política de privacidade',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w100),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
