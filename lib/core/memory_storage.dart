class MemoryStorage {
  static final MemoryStorage _singleton = MemoryStorage._();
  static final Map<Type, Object Function()> _container = {};

  factory MemoryStorage() {
    return _singleton;
  }
  MemoryStorage._();

  bind<T>(T Function() bind) {
    _container[T] = bind as Object Function();
  }

  singleton<T>(T singleton) {
    _container[T] = () => singleton as Object;
  }

  T make<T>() => _container[T]!() as T;
}