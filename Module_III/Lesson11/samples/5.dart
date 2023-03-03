void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // runtime error
  }catch (e) {
    print('misbehave() partially handled ${e.runtimeType}');
    rethrow; // allow cellers to see the exception
  }
}

void main() {
  try {
    misbehave();
  }catch (e) {
    print("main() finished handling ${e.runtimeType}");
  }
}