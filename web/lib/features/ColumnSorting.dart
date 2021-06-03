import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class ColumnSorting extends Feature {
  ColumnSorting(TableModel table) : super(table);

  void enhance() {
    print('ColumnSorting: Click to sort asc/desc/not');
  }
}
