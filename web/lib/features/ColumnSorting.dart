import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class ColumnSorting extends Feature {
  ColumnSorting(TableModel table) : super(table);

  void enhance() {
    print('ColumnSorting: Click to sort asc/desc/not');

    var headers = table.table.tHead?.rows.first.cells.cast<TableCellElement>();
    headers?.forEach(
        (header) => header.onClick.listen((e) => SortColumn(header.cellIndex)));
  }

  void SortColumn(int columnIndex) {
    print('Sorting column $columnIndex');

    List<TableRowElement> rows = List.from(table.table.tBodies
        .map((tBodies) => tBodies.rows)
        .expand((element) => element));

    if (isNumeric(rows.first.cells.elementAt(columnIndex).innerText)) {
      rows.sort((a, b) => int.parse(a.cells.elementAt(columnIndex).innerText)
          .compareTo(int.parse(b.cells.elementAt(columnIndex).innerText)));
    } else {
      rows.sort((a, b) => a.cells
          .elementAt(columnIndex)
          .innerText
          .compareTo(b.cells.elementAt(columnIndex).innerText));
    }

    rows.forEach((row) {
      print(row.innerText);
    });

    table.table.tBodies.first.children.addAll(rows);
  }

  bool isNumeric(String string) {
    if (string.isEmpty) {
      return false;
    }
    final number = num.tryParse(string);

    if (number == null) {
      return false;
    }

    return true;
  }
}
