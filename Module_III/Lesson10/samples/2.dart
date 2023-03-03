import 'dart:math';

void main() {
  List<String>list=['225','23a','-81','0','-78uy','1'];

  double sum = 0;
  for (String i in list) {
    try {
      double result = sqrt(int.parse(i));
      print("\x1B[32m${result}\x1B[0m");
      if (result.isNaN) throw UnsupportedError("$i: $result");
    }
    on FormatException {
      print('remove String values');
    }
    catch (e) {
      print(e);
    }

  }
  print("\x1B[31m$sum\x1B[0m");
}