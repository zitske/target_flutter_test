import 'package:flutter/material.dart';
import 'package:target_flutter_test/src/view/notes/notes_screen.dart';

Future<void> showMyDialog(context, int index) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Apagar nota'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Você tem certeza?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancelar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text(
              'Deletar',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              data.delete(data.notes[index]);
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
