import 'dart:html';

void main() {
  print('Using the dart:html core package');

  // Cascade Notation
  querySelector('#confirm')
    ?..text = 'Confirm'
    ..classes.add('important')
    ..onClick.listen((e) => window.alert('Confirmed!'));

  // Equivalent to:
  // var button = querySelector('#confirm');
  // button?.text = 'Confirm';
  // button?.classes.add('important');
  // button?.onClick.listen((e) => window.alert('Confirmed!'));

  var confirmButton = querySelector('#confirm') as ButtonElement;
}
