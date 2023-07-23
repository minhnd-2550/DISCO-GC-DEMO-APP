import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/src/data/remote/response/registration_response.dart';
import 'package:retrofit/http.dart';

part 'registration_api.g.dart';

@RestApi()
abstract class RegistrationApi {
  factory RegistrationApi(Dio dioBuilder) = _RegistrationApi;

  @POST('/register')
  Future<RegistrationResponse> register(@Query('api_key') String key);
}
