import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class Pagination extends Feature {
  Pagination(TableModel table) : super(table);

  void enhance() {
    print('Pagination: add footer pagination');

    var pags = SelectElement();
    var opts = [1, 2, 3, 4, 5].map((opt) {
      var optEl = OptionElement();
      optEl.value = opt.toString();
      optEl.text = opt.toString();
      return optEl;
    });
    pags.children.addAll(opts);
    table.footer.children.add(pags);
  }
}
