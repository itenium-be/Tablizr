import 'Feature.dart';
import '../TableModel.dart';

import 'RowCount.dart';
import 'GlobalSearchField.dart';
import 'ColumnFilters.dart';
import 'ExportToPdf.dart';
import 'ExportToCsv.dart';
import 'ColumnSorting.dart';
import 'ColumnOrdering.dart';
import 'Pagination.dart';
import 'RowHighligher.dart';
import 'LinkInModal.dart';
import 'PersistSettings.dart';

List<Feature> getFeatures(TableModel table) {
  return [
    RowCount(table),
    GlobalSearchField(table),
    ColumnFilters(table),
    ExportToPdf(table),
    ExportToCsv(table),
    ColumnSorting(table),
    ColumnOrdering(table),
    Pagination(table),
    RowHighligher(table),
    LinkInModal(table),
    PersistSettings(table),
  ];
}

// Other ideas:
// - Apply your own css to all tables to override the css of the original website
// - Options screen: Configure which features you want to activate
// - ColumnConfiguration: modal per column to define width, alignment, ...
// - Guess the type of the column by inspection (so that a date sorts like a date, a number like a number etc)
