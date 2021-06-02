import 'dart:html';

// index.html should be boxes with links to the different examples
// helloWorld.html --> basics
// calc.html --> basic arethmic
// language --> language features

void main() {
  print('Tablizing Darts Tables');
  querySelector('#firstHeading')?.text = 'Tablizing Darts Tables';

  List<Element> tables = querySelectorAll('table');
  for (var table in tables) {
    var castTable = table as TableElement;

    // var row = new TableRowElement();
    // var cell = new TableCellElement();
    // cell.text = "Testy";
    // row.cells.add(cell);
    // castTable.tFoot?.rows.add(row);

    // Google: manipulate html with dart :)

    // var elem2 = Element.html(
    //   '<p>Creating <em>is</em> easy!</p>',
    // );
    // var elem2 = Element.html(
    //   '<p>Creating <em>is</em> easy!</p>',
    // );

    // table.nodes.add(elem2);
    // table.after(elem2);
  }

  // print(tables.length);
}

// Use: https://github.com/dart-lang/html ??

// void addToDoItem(Event e) {
//   var newToDo = new LIElement();
//   newToDo.text = toDoInput.value;
//   toDoInput.value = '';
//   toDoList.children.add(newToDo);
// }

// InputElement toDoInput;
