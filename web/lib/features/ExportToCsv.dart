import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class ExportToCsv extends Feature {
  ExportToCsv(TableModel table) : super(table);

  void enhance() {
    print(
        'ExportToCsv: Font-Awesome is loaded: <i class="fas fa-file-csv"></i>');
    var a = AnchorElement();
    a.text = 'CSV';
    a.onClick.listen((e) async {
      print('Downloading CSV');
      var csv = "";
      var header =
          table.table.tHead?.rows.first.cells as List<TableCellElement>;
      for (TableCellElement cell in header) {
        csv += cell.innerText + ",";
      }

      var rows = table.table.tBodies
          .map((tbody) => tbody.rows)
          .expand((element) => element);

      for (TableRowElement row in rows) {
        csv += "\n";
        for (TableCellElement cell in row.cells) {
          csv += cell.innerText + ",";
        }
      }
      window.navigator.clipboard?.writeText(csv);
    });
    table.footer.children.add(a);
  }
}
