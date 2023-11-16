import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:target_flutter_test/src/controller/notes/notes_controller.dart';

// Include generated file
part 'data.g.dart';

// This is the class used by rest of your codebase
class Data = _Data with _$Data;

// The store-class
abstract class _Data with Store {
  @observable
  var notes = ObservableList<String>();

  @observable
  bool editing = false;

  @observable
  String editCache = "";

  @action
  void add(String value) {
    notes.add(value);
  }

  @action
  void delete(String value) {
    notes.remove(value);
    if (editing && value == editCache) {
      cancel();
    }
  }

  @action
  void update(String value, String newValue) {
    notes[notes.indexOf(value)] = newValue;
  }

  @action
  void submit() {
    if (noteTextController.text.isNotEmpty && noteTextController.text != "") {
      if (editing) {
        notes[notes.indexOf(editCache)] = noteTextController.text;
        noteTextController.clear();
        cancel();
        noteFocusNode.requestFocus();
      } else {
        add(noteTextController.text);
        noteTextController.clear();
        noteFocusNode.requestFocus();
      }
    }
  }

  @action
  void cancel() {
    editing = false;
    noteTextController.clear();
    noteFocusNode.requestFocus();
  }

  @action
  void editMode(String cache) {
    editing = true;
    editCache = cache;
    noteTextController.text = cache;
    noteFocusNode.requestFocus();
  }
}
