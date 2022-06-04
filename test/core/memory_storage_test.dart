
import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MemoryStorage storage = MemoryStorage.getInstance();

  test("DIContainer - Success", () {
    final TestContainer container;
    storage.bind(ImplDIContainer, () { return TestContainer(); });

    container = storage.make<ImplDIContainer>() as TestContainer;
    expect(container.runtimeType, equals(TestContainer().runtimeType));
  });

  test("Singleton", () {
    TestContainer container = TestContainer();
    TestContainer makeContainer;
    
    container.code = "#HASH_CODE";
    storage.single(TestContainer, container);
    makeContainer = storage.make<TestContainer>() as TestContainer;

    expect("#HASH_CODE", makeContainer.code);
  });
}


abstract class ImplDIContainer {}
class TestContainer {
  late String code = "";
}