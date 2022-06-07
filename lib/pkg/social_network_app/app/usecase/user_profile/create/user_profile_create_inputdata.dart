/// ユーザープロフィール新規作成用データ
class UserProfileCreateInputData {
  final String _userId;
  final String _userName;
  final String _userDescription;
  final String _userProfileIconUrl;

  UserProfileCreateInputData(
      this._userId, this._userName, this._userDescription, this._userProfileIconUrl);

  Map<String, dynamic> toMap() {

    return {
      'userId': userId,
      'userName': userName,
      'description': userDescription,
      'iconUrl': userProfileIconUrl
    };
  }

  String get userDescription => _userDescription;
  String get userName => _userName;
  String get userId => _userId;
  String get userProfileIconUrl => _userProfileIconUrl;
}