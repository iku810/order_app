class Credentials {
  factory Credentials.from({
    required String clientId,
    required String clientSecret,
  }) {
    if (clientId.isEmpty || clientSecret.isEmpty) {
      throw ArgumentError('クライアントIDとクライアントシークレットは空文字列を許容しません');
    }
    return Credentials._(clientId, clientSecret);
  }

  Credentials._(this.clientId, this.clientSecret);

  final String clientId;
  final String clientSecret;
}
