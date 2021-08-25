import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class RowHighligher extends Feature {
  RowHighligher(TableModel table) : super(table);

  void enhance() {
    print('RowHighligher: highlight rows by clicking on them');

    table.bodyRows.forEach((element) {
      element.onClick.listen((event) {
        clearAllHighlights();
        element.classes.add('highlighted');
      });
    });
  }

  void clearAllHighlights() {
    table.bodyRows.forEach((element) {
      if (element.classes.contains('highlighted')) {
        element.classes = element.classes.where((c) => c != 'highlighted');
      }
    });
  }
}
