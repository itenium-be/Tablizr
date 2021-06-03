import 'dart:html';
//import 'dart:io';
import 'package:csv/csv.dart';

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
      var test = table.table.tHead?.rows.first.cells as List<TableCellElement>;
      for (TableCellElement row in test) {}

      //String csv = const ListToCsvConverter().convert(yourListOfLists);
      //final filename = 'file.txt';
      var file = await File(filename).writeAsString('some content');
      //final pathOfTheFileToWrite = directory.path + "/myCsvFile.csv"
      //File file = await File(pathOfTheFileToWrite);
      //file.writeAsString(csv);
    });
    table.footer.children.add(a);
  }
}
