import 'dart:html';
import 'Feature.dart';
import '../TableModel.dart';

class LinkInModal extends Feature {
  LinkInModal(TableModel table) : super(table);

  DivElement? modal = null;

  void enhance() {
    // var body = querySelector('body') as BodyElement;

    // var links = querySelectorAll('.tablizr-1 a').cast<AnchorElement>();
    // print('anchors? ${links.length}');

    // final NodeValidatorBuilder validator = new NodeValidatorBuilder.common()
    //   ..allowElement('object', attributes: ['type', 'data', 'style']);

    // var self = this;

    // links.forEach((element) {
    //   element.onMouseEnter.listen((event) {
    //     print('hover over' + (element.text ?? ''));
    //     var url = element.href;

    //     // if (self.modal != null) --> Delete old modal

    //     self.modal = new DivElement()..classes.add('tablizr-modal');
    //     self.modal?.style
    //       ?..top = event.client.x.toString() + 'px'
    //       ..left = event.client.y.toString() + 'px';

    //     var p = new ParagraphElement();
    //     p.setInnerHtml('<object type="text/html" data="$url" style="width: 100%; height: 100%"></object>', validator: validator);

    //     self.modal?.children.add(p);
    //     body.children.add(self.modal as DivElement);
    //   });

    //   element.onMouseLeave.listen((event) {
    //     if (self.modal != null) {
    //       // TODO: delete modal
    //       // TODO: height 100% needed
    //     }
    //   });
    // });
  }
}
