import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class LinkInModal extends Feature {
  LinkInModal(TableModel table) : super(table);

  void enhance() {
    print('LinkInModal: open links in cells in a modal window');
  }
}
