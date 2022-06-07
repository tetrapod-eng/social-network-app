
import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MemoryStorage storage = MemoryStorage();

  test("DIContainer - Success", () {
    final TestContainer container;
    storage.bind<TestContainer>(() => TestContainer());

    container = storage.make();
    expect(container.runtimeType, equals(TestContainer().runtimeType));
  });

  test("Singleton", () {
    TestContainer container = TestContainer();
    TestContainer makeContainer;
    
    container.code = "#HASH_CODE";
    storage.singleton<TestContainer>(container);
    makeContainer = storage.make();

    expect("#HASH_CODE", makeContainer.code);
  });
}


abstract class ImplDIContainer {}
class TestContainer {
  late String code = "";
}