import 'dart:convert';

void main() {
  //print(1~/0); // IntegerDivisionByZeroException

  // dynamic x; // NoSuchMethodError: The getter 'isEven' was called on null.
  // print(x.isEven); // IntegerDivisionByZeroException

  // int.parse('42');
  // int.parse('hello'); //FormatException: Invalid radix-10 number (at character 1)

  // functionOne();


  // final characters = "abcdefghijklmnopqrstuvwxyz!";
  // final data = [4, 1, 18,20,0,9,19,6,21,14,27 ];
  // final buffer = StringBuffer();
  //
  // for (final index in data) {
  //   final letter = characters[index];
  //   buffer.write(letter);
  //   test();
  // }
  // print(buffer);


  // const malformedJSON = "abc";
  // jsonDecode(malformedJSON);

  String number = "hello";

  try {
    dynamic result = int.parse(number);
    print(result);
  }
  // on FormatException {
  //   print('invalid');
  // }
  catch (e, s) {
    print("error: $e");
    print("\x1B[32mstack error: $s\x1B[0m");
  }
}

// void test() {
//   print("object");
// }

// void functionOne() {functionTwo();}
// void functionTwo() {functionThree();}
// void functionThree() {print("hello");}