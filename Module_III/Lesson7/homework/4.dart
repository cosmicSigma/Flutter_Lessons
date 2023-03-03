class Storage<T> {
  final Map<String, T> _database = {};

  void storeData(String key, T data) {
    _database[key] = data;
  }

  T? readData(String key) {
    return _database[key];
  }

  void updateData(String key, T newData) {
    if (_database.containsKey(key)) {
      _database[key] = newData;
    } else {
      throw ArgumentError('Key $key not found in database');
    }
  }

  void removeData(String key) {
    _database.remove(key);
  }
}
