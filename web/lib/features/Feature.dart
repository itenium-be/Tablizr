import '../TableModel.dart';

abstract class Feature {
  final TableModel table;

  Feature(this.table);

  enhance();
}
