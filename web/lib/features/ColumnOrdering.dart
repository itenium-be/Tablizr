import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class ColumnOrdering extends Feature {
  ColumnOrdering(TableModel table) : super(table);

  void enhance() {
    print('ColumnOrdering: Drag & Drop a header cell to reorder columns');
  }
}
