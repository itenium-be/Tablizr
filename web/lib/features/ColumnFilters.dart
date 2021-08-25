import 'dart:html';
import '../../Examples/01-Basics/Showcase.dart';
import 'Feature.dart';
import '../TableModel.dart';

class ColumnFilters extends Feature {
  ColumnFilters(TableModel table) : super(table);

  void enhance() {
    print('ColumnFilters: Add a search field on each column');

    print(table.columnCount);

    var row = table.table.tHead!.addRow();
    for (int i = 0; i < table.columnCount; i++) {
      _addInputToHeaderCell(row, i);
    }
  }

  void _addInputToHeaderCell(TableRowElement row, int columnIndex) {
    var cell = row.addCell();
    var input = InputElement();
    cell.children.add(input);
    _addListenerToInput(input, columnIndex);
  }

  void _addListenerToInput(InputElement input, int columnIndex) {
    input.onInput.listen((Event event) {
      _filterRows(input.value, columnIndex);
    });
  }

  void _filterRows(String? searchText, int columnIndex) {
    //print('Filtering rows by $searchText and column index $columnIndex');

    if (searchText == null) {
      return;
    }

    table.table.tBodies
        .map((tbody) => tbody.rows)
        .expand((element) => element)
        .forEach((tRow) => _handleRow(tRow, searchText, columnIndex));
  }

  void _handleRow(TableRowElement tRow, String searchText, int columnIndex) {
    bool showRow = tRow.cells[columnIndex].innerText
        .toLowerCase()
        .contains(searchText.toLowerCase());
    tRow.hidden = !showRow;
  }
}
