class Controller {
  void init() => print("controller initializing ...");
  void dispose() => print("controller disposed!");
  bool forward(String today) {
    init();
    try {
      if (int.parse(today)==2) return true;
    }on FormatException {
      print("hey i don't support this type of values");
    } finally {
      dispose();
    }
    return false;
  }
}

void main() {
  final cont = Controller();
  cont.forward("1a3");
}