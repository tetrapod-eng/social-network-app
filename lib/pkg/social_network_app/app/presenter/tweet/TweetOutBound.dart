class TweetOutBound {
  final String _userId;
  final String _userName;
  final String _iconUrl;
  final String _tweetText;

  TweetOutBound(this._userId, this._userName, this._iconUrl, this._tweetText);

  String get tweetText => _tweetText;
  String get iconUrl => _iconUrl;
  String get userName => _userName;
  String get userId => _userId;
}