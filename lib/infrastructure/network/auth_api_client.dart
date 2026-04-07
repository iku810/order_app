import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../shared/auth/data/dto/token_data.dart';

part 'auth_api_client.g.dart';

@RestApi(baseUrl: 'https://id.smaregi.dev/')
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String? baseUrl}) = _AuthApiClient;

  @POST('app/{contractId}/token')
  @FormUrlEncoded()
  Future<TokenData> getToken({
    @Path('contractId') required String contractId,
    @Field('grant_type') required String grantType,
    @Field('scope') required String scope,
  });
}
