import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/src/data/remote/response/registration_response.dart';
import 'package:retrofit/http.dart';

part 'confirmation_api.g.dart';

@RestApi()
abstract class ConfirmationApi {
  factory ConfirmationApi(Dio dioBuilder) = _ConfirmationApi;

  @POST('/profile')
  Future<RegistrationResponse> submitProfile(@Query('api_key') String key);
}
