import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class GlobalSearchField extends Feature {
  GlobalSearchField(TableModel table) : super(table);

  void enhance() {
    print(
        'GlobalSearchField: Add a theader with a single input: filter the table on all cells');

    var input = _addInputToHeader();
    _addListenerToInput(input);
  }

  InputElement _addInputToHeader() {
    var tableHeader = table.table.createTHead();
    var row = tableHeader.addRow();
    var cell = row.addCell();

    cell.colSpan = table.columnCount;

    var input = InputElement();
    cell.children.add(input);

    return input;
  }

  void _addListenerToInput(InputElement input) {
    input.onInput.listen((Event event) {

      _filterRows(input.value);
    });
  }

  void _filterRows(String? searchText) {
    print('Filtering rows by $searchText');

    if (searchText == null) {
      return;
    }

    table.table.tBodies.map((tbody) => tbody.rows)
      .expand((element) => element)
      .forEach((tRow) => _handleRow(tRow, searchText));
  }

  void _handleRow(TableRowElement tRow, String searchText) {
    bool showRow = tRow.cells.any((cell) {
      return cell.innerText.contains(searchText);
    });
    tRow.hidden = !showRow;
  }

}
