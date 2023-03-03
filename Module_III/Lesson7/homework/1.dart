extension ListExtensions<T> on List<T> {
  void printList() {
    print(this);
  }
}

void console<T>(List<T> list) {
  list.printList();
}

void main() {
  var myIntList = [1, 2, 3, 4, 5];
  console(myIntList);

  var myStringList = ['apple', 'banana', 'orange'];
  console(myStringList);
}
