import 'dart:html';
import 'lib/TableModel.dart';

void main() {
  print('Tablizing Darts Tables');
  querySelector('#firstHeading')?.text = 'Tablizing Darts Tables';

  List<TableElement> tables = querySelectorAll('table').cast<TableElement>();
  if (tables.isEmpty) return;

  for (var table in tables) {
    TableModel(table);
  }
}
