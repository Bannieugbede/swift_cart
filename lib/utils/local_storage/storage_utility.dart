import 'package:get_storage/get_storage.dart';

class ZLocalStorage {
  static final ZLocalStorage _instance = ZLocalStorage._internal();

  factory ZLocalStorage() {
    return _instance;
  }

  ZLocalStorage._internal();

  final _storage = GetStorage();

  // generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }

}
