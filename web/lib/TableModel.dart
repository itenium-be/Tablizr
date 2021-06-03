import 'dart:html';

int tableCount = 0;

class TableModel {
  final TableElement table;
  late String _idPrefix;

  int get columnCount => table.tBodies.first.rows.first.cells.length;

  TableModel(this.table) {
    this._idPrefix = 'tablizr-${++tableCount}';
    this._addFooter();
    this._addHeader();
  }

  void _addFooter() {
    // Improvement: tfoot could already exist
    var footer = table.createTFoot().addRow();
    var cell1 = footer.addCell();
    cell1.id = _idPrefix + '-footer';
    cell1.colSpan = columnCount;

    var elem = Element.html(
      '''
      <div>
        <span id="#$_idPrefix-rowCount">0</span> records
      </div>
      ''',
    );

    cell1.children.add(elem);
  }

  void _addHeader() {}
}
