void main() {
  // log
  print('Hello World');

  // type (just like C) var final const
  int x = 10;
  var x2 = 10;
  final x3 = 10;
  const x4 = 10;
  dynamic x5;
  x5 = 10;
  x5 = 'Hello';

  // string
  var hello = 'Hello \n';
  var unEscapeSequence = r'C:\windows\system32';
  var multiLineString = """Hello
  World""";
  var concatString = "x = $x";
  var concatString2 = "x + x2 = ${x + x2}";

  // if else
  if (x == 5) {

  } else if (x == 8) {

  } else {

  }

  // switch
  switch (x) {
    case 5:
      break;
    default:
      break;
  }

  // while
  while(x == 5) {

  }

  // for
  for (var i = 0; i <=10; i++) {

  };

  // list
  List<int> numbers;
  var numbers2 = [1,2,3];
  var objects = ['a', 'b', 10];
  var strings = <String>['a', 'b', 'c'];

  numbers2.add(4);
  numbers2[0] = 10;

  // foreach
  for (var n in numbers2) {
    print(n);
  }

  // set
  var countries = {'Thailand', 'United State'}; // unique key

  // map
  var countries2 = {
    'name': 'Bond',
    'age': 18,
  };
  var countries3 = <String, Object>{
    'name': 'Bond',
    'age': 18,
  };

  for (var c in countries2.keys) {
    print(c);
  }
  for (var c in countries2.values) {
    print(c);
  }
  for (var c in countries2.entries) {
    print('${c.key} = ${c.value}');
  }

  // inline condition
  var intern = ['John', 'Doherty'];
  var intern2 = ['Jeff', 'Madness'];
  var names = [
    'Bond',
    if (true) 'Song',
    for (var n in intern) n,
    ...intern2,
  ];

  // pass by reference
  var arrX = [1,2,3];
  var arrY = arrX;

  arrX[0] = 10;
  // arrX = [10,2,3]
  // arrY = [10,2,3]

  // copy value
  var arrX2 = [1,2,3];
  var arrY2 = [...arrX2];

  arrX2[0] = 10;
  // arrX2 = [10,2,3]
  // arrY2 = [1,2,3]

  // eum
  var date = Days.monday;

  // nullable type (normally require non-nullable)
  // int? xx;
  // if (xx == null) return

  // ternary operator
  var ternary = false;
  var ternaryResult = ternary != false ? ternary : 0;

  // function
  getHello('Bond', 18);
  getHello2(
    age: 18,
    name: 'Bond',
  );
  getHello3('Bond', age: 18);
  var helloText = sayHello(age: 18, name: 'Bond');
  print(helloText);

  // new type
  Calculator f = (int a, int b) => a + b;
}

// enum
enum Days { // types pascal case, value lower case
  monday,
  tuesday,
  wednesday,
}

// function
void getHello(String name, int age) {
  print('Hello $name age $age');
}
void getHello2({ String name, int age = 0 }) {
  print('Hello $name age $age');
}
void getHello3(String name, { int age }) {
  print('Hello $name age $age');
}
String sayHello({ String name, int age }) => 'Hello $name age $age'; // fat arrow return in 1 line

// new type
typedef Calculator = int Function(int, int); // a type that receive 2 int and return 1 int

// class

