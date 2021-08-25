import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class RowCount extends Feature {
  RowCount(TableModel table) : super(table);

  void enhance() {
    var elem = Element.html(
      '''
      <div>
        <span id="#${table.createId('rowCount')}">Total rows: ${calculateBodyRowsOfTable()}</span> records
      </div>
      ''',
    );

    table.footer.children.add(elem);
  }

  int calculateBodyRowsOfTable() {
    // get rows of all possible table bodies, sum these numbers
    return table.table.tBodies
        .map((body) => body.rows.length)
        .reduce((value, element) => value + element);
  }
}
