import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class ExportToCsv extends Feature {
  ExportToCsv(TableModel table) : super(table);

  void enhance() {
    print(
        'ExportToCsv: Font-Awesome is loaded: <i class="fas fa-file-csv"></i>');
  }
}
