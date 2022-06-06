/// ランダムで投稿を取得するAPIに接続する
abstract class ImplRandomTweetUseCase {
  void handle();

  void findByUserId(String userId);
}