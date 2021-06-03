import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class ColumnResizing extends Feature {
  ColumnResizing(TableModel table) : super(table);

  void enhance() {
    print(
        'ColumnResizing: Hover between 2 headers: different cursor and allow user to drag to change the size of the column');
  }
}
