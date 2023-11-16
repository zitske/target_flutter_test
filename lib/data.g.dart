// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Data on _Data, Store {
  late final _$notesAtom = Atom(name: '_Data.notes', context: context);

  @override
  ObservableList<String> get notes {
    _$notesAtom.reportRead();
    return super.notes;
  }

  @override
  set notes(ObservableList<String> value) {
    _$notesAtom.reportWrite(value, super.notes, () {
      super.notes = value;
    });
  }

  late final _$editingAtom = Atom(name: '_Data.editing', context: context);

  @override
  bool get editing {
    _$editingAtom.reportRead();
    return super.editing;
  }

  @override
  set editing(bool value) {
    _$editingAtom.reportWrite(value, super.editing, () {
      super.editing = value;
    });
  }

  late final _$editCacheAtom = Atom(name: '_Data.editCache', context: context);

  @override
  String get editCache {
    _$editCacheAtom.reportRead();
    return super.editCache;
  }

  @override
  set editCache(String value) {
    _$editCacheAtom.reportWrite(value, super.editCache, () {
      super.editCache = value;
    });
  }

  late final _$_DataActionController =
      ActionController(name: '_Data', context: context);

  @override
  void add(String value) {
    final _$actionInfo = _$_DataActionController.startAction(name: '_Data.add');
    try {
      return super.add(value);
    } finally {
      _$_DataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void delete(String value) {
    final _$actionInfo =
        _$_DataActionController.startAction(name: '_Data.delete');
    try {
      return super.delete(value);
    } finally {
      _$_DataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void update(String value, String newValue) {
    final _$actionInfo =
        _$_DataActionController.startAction(name: '_Data.update');
    try {
      return super.update(value, newValue);
    } finally {
      _$_DataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void submit() {
    final _$actionInfo =
        _$_DataActionController.startAction(name: '_Data.submit');
    try {
      return super.submit();
    } finally {
      _$_DataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void cancel() {
    final _$actionInfo =
        _$_DataActionController.startAction(name: '_Data.cancel');
    try {
      return super.cancel();
    } finally {
      _$_DataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editMode(String cache) {
    final _$actionInfo =
        _$_DataActionController.startAction(name: '_Data.editMode');
    try {
      return super.editMode(cache);
    } finally {
      _$_DataActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
notes: ${notes},
editing: ${editing},
editCache: ${editCache}
    ''';
  }
}
