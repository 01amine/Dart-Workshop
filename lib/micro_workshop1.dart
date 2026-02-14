import 'dart:async';
import 'dart:isolate';

void variablesAndTypes() {
  int age = 28;
  int hexColor = 0xFF5733;
  double pi = 3.14159265358979;
  double scientificNotation = 1.5e4;
  double result = pi * 2;
  print('pi=$pi, sci=$scientificNotation, result=$result');
  String name = 'amine';
  String greeting = "Hello, $name!";
  String multiLine = '''
    This is a
    multi line string
  ''';
  String expression = 'The answer is ${40 + 2}';
  print(greeting);
  print(multiLine.trim());
  print(expression);
  bool isAwesome = true;
  bool isBoring = false;
  bool combined = isAwesome && !isBoring;
  print('is awesome: $combined');
  var score = 99;
  var label = 'Level';
  dynamic dynavar;
  // score = 'oops';    //can't assign String to int
  print('$label $score');
  final DateTime now = DateTime.now();
  final String uppercased = name.toUpperCase();
  // uppercased = 'X'; // final can't be reassigned
  print('Now: $now');
  print('Uppercased: $uppercased');
  const String appName = 'WorkshopApp';
  List list = [1, "hello", true];
  const List<int> numbers = [1, 2, 3];
  String nonNullable = 'I always have a value';
  // nonNullable = null; // compile error

  // Use ? to allow null
  String? maybeNull = null;
  maybeNull = 'Now I have a value';
  maybeNull = null;

  // ?? checks if null return right, if not null returns right
  String displayName = maybeNull ?? 'Anonymous';
  print('Display: $displayName');

  String? city;
  int? cityLength = city?.length;
  print('City length: $cityLength');

  // t9ol lel compiler i know beli its null, but trust me it wont be at runtime
  String? knownGood; //= 'hello';
  int forceLength = knownGood!.length;
  print('Forced length: $forceLength');
  late String lateInit;
  lateInit = 'Initialized before use';
  print('Late: $lateInit');
}

void collections() {
  List<String> fruits = ['apple', 'banana', 'cherry'];
  fruits.add('date');
  fruits.remove('banana');
  fruits.insert(1, 'blueberry');
  print('Fruits: $fruits');
  fruits.forEach((f) => print(f));

  List<String> upperFruits = fruits.map((f) => f.toUpperCase()).toList();
  print('Upper: $upperFruits');

  List<String> longNames = fruits.where((f) => f.length > 5).toList();
  print('Long names: $longNames');

  List<int> numbers = [1, 2, 3, 4, 5];
  int sum = numbers.reduce((acc, val) => acc + val);
  print('Sum via reduce: $sum');

  List<int> more = [6, 7, 8];
  List<int> combined = [...numbers, ...more];
  print('Spread: $combined');

  bool addBonus = false;
  List<String> menu = [
    'burger',
    'fries',
    if (addBonus) 'milkshake',
    for (var i = 1; i <= 3; i++) 'soda$i',
  ];
  menu.add("hello");
  menu.forEach(
    (element) {
      print(element);
    },
  );
  print('Menu: $menu');

  String? name;

  print(name);

  Set<String> tags = {'dart', 'flutter', 'mobile'};
  tags.add('dart');
  tags.add('web');
  print('Tags: $tags');

  bool hasFlutter = tags.contains('flutter');
  print('Has flutter: $hasFlutter');

  Set<int> a = {1, 2, 3, 4};
  Set<int> b = {3, 4, 5, 6};
  print('Union: ${a.union(b)}');
  print('Intersection: ${a.intersection(b)}');
  print('Difference a-b: ${a.difference(b)}');

  Map<String, dynamic> scores = {
    'amine': 95,
    'wail': true,
    'walid': 92,
  };
  scores['wail'] = 90;
  scores.remove('walid');
  scores.forEach((name, score) {
    print('  $name  $score');
  });

  List<String> ranking =
      scores.entries.map((e) => '${e.key}:${e.value}').toList();
  print('Ranking: $ranking');
}

void otherTypes() {
  String heart = '\u2764'; // ❤
  String grinning = '\u{1F600}'; // 😀
  print('Heart: $heart  Grinning: $grinning');
  Runes r = Runes('Hello \u{1F44B}'); // 👋
  String emoji = '😀';
  Null nothing = null;
  print('Nothing is: $nothing');
}

int add(int a, int b) {
  return a + b;
}

int multiply(int a, int b) => a * b;

String buildProfile({
  required String name,
  int age = 0,
  String role = 'user',
}) {
  return '$name (age: $age, role: $role)';
}

void highOrderFunction(Function func) => 2 + 2;

List<T> myFilter<T>(List<T> list, bool Function(T) predicate) {
  List<T> result = [];
  for (var item in list) {
    if (predicate(item)) result.add(item);
  }
  return result;
}

Function makeMultiplier(int multiplier) {
  return (int x) => x * multiplier;
}

void functionsDemo() {
  print('add: ${add(3, 4)}');
  print('multiply: ${multiply(6, 7)}');
  print(buildProfile(name: 'Alice', age: 30, role: 'admin'));
  print(buildProfile(name: 'Bob'));

  var subtract = (int a, int b) {
    return a - b;
  };
  print('subtract: ${subtract(10, 3)}');

  List<int> evens = myFilter([1, 2, 3, 4, 5, 6], (n) => n.isEven);
  print('Evens: $evens');

  var triple = makeMultiplier(3);
  var quadruple = makeMultiplier(4);
  print('triple(5) = ${triple(5)}');
  print('quadruple(5) = ${quadruple(5)}');

  List<int Function(int, int)> operations = [add, multiply, subtract];
  for (var op in operations) {
    print('  op(6, 3) = ${op(6, 3)}');
  }
}
