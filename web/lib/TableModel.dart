import 'dart:html';
import 'features/Feature.dart';

import 'features/FeatureFactory.dart';

int tableCount = 0;

class TableModel {
  final TableElement table;
  late String _idPrefix;
  late DivElement footer;
  late List<Feature> features;

  int get columnCount => table.tBodies.first.rows.first.cells.length;

  TableModel(this.table) {
    this._idPrefix = 'tablizr-${++tableCount}';
    this._addFooter();

    features = getFeatures(this);
    for (var feature in features) {
      feature.enhance();
    }
  }

  String createId(String id) => '$_idPrefix-footer';

  void _addFooter() {
    // Improvement: tfoot could already exist
    var footerRow = table.createTFoot().addRow();
    var cell1 = footerRow.addCell();
    cell1.colSpan = columnCount;

    footer = DivElement();
    footer.id = createId('-footer');
    cell1.children.add(footer);
  }

  List<TableRowElement> get bodyRows =>
      table.tBodies.map((e) => e.rows).expand((i) => i).toList();
}
