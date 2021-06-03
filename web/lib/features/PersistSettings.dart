import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class PersistSettings extends Feature {
  PersistSettings(TableModel table) : super(table);

  void enhance() {
    print(
        'PersistSettings: save & restore the user settings (filters, highlights, column orders, ...)');
    // This will probably need extra method(s) on the Feature mixin
  }
}
