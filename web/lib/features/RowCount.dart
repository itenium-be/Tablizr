import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class RowCount extends Feature {
  RowCount(TableModel table) : super(table);

  void enhance() {
    var elem = Element.html(
      '''
      <div>
        <span id="#${table.createId('rowCount')}">Total rows: ${table.bodyRows.length}</span> records
      </div>
      ''',
    );

    table.footer.children.add(elem);
  }
}
