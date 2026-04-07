class Token {
  factory Token.fromValue(
    String value,
    PositiveInt? expiredIn,
    LastFetchedAt lastFetchedAt,
  ) {
    if (value.isEmpty) {
      throw ArgumentError('トークンは空文字列を許容しません');
    }
    if (expiredIn == null) {
      throw ArgumentError('有効期限は必須です');
    }

    return Token._(value, expiredIn, lastFetchedAt);
  }

  Token._(this.value, this._expiredInSec, this._lastFetchedAtSec);

  final String value;

  final PositiveInt _expiredInSec;
  int get expiredInSec => _expiredInSec.value;

  final LastFetchedAt _lastFetchedAtSec;
  int get lastFetchedAtSec => _lastFetchedAtSec.value;

  bool get isExpired =>
      (_expiredInSec.value + _lastFetchedAtSec.value) * 1000 <
      DateTime.now().millisecondsSinceEpoch;
}

class PositiveInt {
  PositiveInt(this.value) {
    if (value <= 0) {
      throw ArgumentError('正の整数を指定してください: $value');
    }
  }

  final int value;
}

class LastFetchedAt extends PositiveInt {
  LastFetchedAt._(super.value);

  factory LastFetchedAt() {
    return LastFetchedAt._(
      (DateTime.now().millisecondsSinceEpoch / 1000).ceil(),
    );
  }

  factory LastFetchedAt.fromValue(int value) {
    return LastFetchedAt._(value);
  }
}
