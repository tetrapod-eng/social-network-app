import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/auth/impl_auth_usecase.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/auth/mock_auth.dart';

class Initialize {

  static void registerContainer() {
    MemoryStorage storage = MemoryStorage.getInstance();

    // 認証システムDI
    storage.bind(ImplAuthUseCase, (){
      return MockAuth();
    });
    storage.bind(MockAuth, () {
      return MockAuth();
    });
  }
}