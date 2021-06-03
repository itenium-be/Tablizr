import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class GlobalSearchField extends Feature {
  GlobalSearchField(TableModel table) : super(table);

  void enhance() {
    var input = InputElement();
    print(
        'GlobalSearchField: Add a theader with a single input: filter the table on all cells');
  }
}
