class MemoryStorage {
  static final MemoryStorage _storage = MemoryStorage();
  Map<Type, Function> instances = {};
  Map<Type, Object> singleton = {};

  static MemoryStorage getInstance() {
    return _storage;
  }

  void bind<T>(T, Function boot) {
    instances[T] = boot;
  }

  void single<T>(T, Object object) {
    singleton[T] = object;
  }

  Object make<T>() {

    if (singleton.containsKey(T)) { // singleton

      return singleton[T]!;
    } else if (instances.containsKey(T)) { // Boot

      return instances[T]!();
    }

    throw Exception("インスタンスの登録がされていません。");
  }
}