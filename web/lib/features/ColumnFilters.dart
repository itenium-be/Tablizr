import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class ColumnFilters extends Feature {
  ColumnFilters(TableModel table) : super(table);

  void enhance() {
    print('ColumnFilters: Add a search field on each column');
  }
}
