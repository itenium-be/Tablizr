// Add a package from pub.dev/packages
// With: dart pub add characters
import 'package:characters/characters.dart';

/// DartDocs
/// In CLI apps, main accepts a single param: List<String> arguments
void main() {
  print('Hello Darts');

  LearnAboutTypes();

  LearnAboutCollections();

  var parsedInt = LearnAboutFunctions('42');
  print(parsedInt);

  LearnAboutExceptions();
}

typedef IntList = List<int>;

void LearnAboutTypes() {
  // Numbers
  var i1 = 5; // Type inference
  // i1 = 'oops';
  // i1 = null;
  // i1 = 3.5;
  int? i2 = null;

  var d1 = 3.5;
  d1 = 3 as double; // as (cast) / is (type check) / is! (not is)
  // "as" throws if the cast is not possible
  double? d2;
  assert(d2 == null);
  d2 ??= 5;
  assert(d2 == 5);

  num n1 = i1;
  n1 = d1;

  // Strings
  final String str1 = 'String interpolation: ${i1} or $i1'; // like js const
  const str2 = 'Yaye'; // immutable
  assert(str2.characters.last == 'e');
  var multiLine = 'Products\n'
      'Beer €25';
  multiLine = '''
    alt multiline syntax
  ''';
  assert(multiLine.isNotEmpty);

  // Dynamic
  Object name = 'Bob';
  name = 42;

  dynamic d = '2';
  d = 5;

  // Other
  late String description;
  // print(description);
  // late String temperature = _readThermometer(); // Lazily initialized.
}

void LearnAboutCollections() {
  // List<T>
  var list = const [1, 2, 3];
  assert(list.length == 3);
  // list[1] = 5; // runtime error

  // Spread
  list = [0, ...list];
  list = [0, ...?null];

  var result = list.skip(1).where((x) => x > 5).map((x) => x * 10).first;

  // if/for
  var nav = [
    'el1',
    if (true) 'opt1',
    for (var i in list) 'ex$i',
  ];

  // Set<T>
  var emptySet = <String>{};
  var colors = {'blue', 'red', 'green'};
  emptySet.add('yellow');
  emptySet.addAll(colors);

  // Map<K, V> == JS Obj Literals
  var map = {
    'first': '1st',
    'second': '2nd',
  };
  var emptyMap = Map<String, int>();
}

int LearnAboutFunctions(String input, [List<num> lst = const [1, 2, 3]]) {
  withNamedParameters(key: 'key');
  withOptionalParam(5);

  final arrowFn = (num? val) => val?.toString().toUpperCase();

  // Anonymous fn
  lst.forEach((itm) {
    print(itm);
  });

  // Extension Methods
  var padded = input.padLeft(10);
  final result = input.parseInt();
  return result;
}

void withNamedParameters({required String key, int? value = 0}) {}
void withOptionalParam(int start, [int? end = 999]) {}

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  int _specificToLibrary() {
    return 42;
  }
}

extension MyFancyList<T> on List<T> {
  int get doubleLength => length * 2;
  List<T> operator -() => reversed.toList();
  List<List<T>> split(int at) => [sublist(0, at), sublist(at)];
}

void LearnAboutExceptions() {
  try {
    throw FormatException("format err");
  } on FormatException {
    print("Couldn't format :(");
  } on Exception catch (e) {
    print('Unknown exception: $e');
  } catch (e, s) {
    print('Something really unknown: $e');
    print('with stackTrace' + s.toString());
    rethrow;
  } finally {
    print('always');
  }
}
