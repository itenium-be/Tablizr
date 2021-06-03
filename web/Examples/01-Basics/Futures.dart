import 'dart:async';

void main() async {
  final version = await getVersion();
  print(version);

  fetchUserOrder()
      .then((drink) => print('Serving a $drink'))
      .catchError((onError) => print('A refund is in order!'));

  TrySyncGenerator();
  TryAsyncGenerator();
}

// A Future is either Uncompleted or Completed (with value, no value or error)
Future<String> getVersion() async => "1.0";

Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2), () => 'Large Latte');

void TrySyncGenerator() {
  print('TrySyncGenerator');
  print('First: ' + generateRandom().first.toString());
  // elementAt, map, (first)where, first/last, single(Where), reduce, any/every, ...

  print('Sync');
  for (var rnd in generateRandom().skip(1)) {
    print(rnd);
  }
}

/// Synchronous generator
Iterable<int> generateRandom() sync* {
  // https://tinyurl.com/snc9azx9
  yield 9;
  yield 9;
  yield 9;
  yield 9;
  yield 9;
  yield 9;
}

void TryAsyncGenerator() async {
  print('Async');
  await for (var rnd in generateRandomAsync()) {
    print(rnd);
  }
}

Stream<int> generateRandomAsync() async* {
  // https://xkcd.com/221/
  yield 4;
  yield 4;
  yield 4;
}
