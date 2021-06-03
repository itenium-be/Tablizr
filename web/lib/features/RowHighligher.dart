import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class RowHighligher extends Feature {
  RowHighligher(TableModel table) : super(table);

  void enhance() {
    print('RowHighligher: highlight rows by clicking on them');
  }
}
