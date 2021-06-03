import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class Pagination extends Feature {
  Pagination(TableModel table) : super(table);

  void enhance() {
    print('Pagination: add footer pagination');
  }
}
