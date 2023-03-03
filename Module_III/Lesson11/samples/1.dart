void main() {
  final database = FakeDatabase();
  database.open();

  try {
    final data = database.fetchData();
    final number = int.parse(data);
    print("The number is $number");
  } on FormatException {
    print("Dart didn't recognize that as a number");
  } finally {
    database.close();
  }
}

class FakeDatabase {
  void open() => print("Opening the database.");
  void close() => print("Closing the database.");
  String fetchData() => '42';
}