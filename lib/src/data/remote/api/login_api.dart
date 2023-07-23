import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:flutter_clean_architecture/src/data/model/login_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/login_response_data_model.dart';

part 'login_api.g.dart';

@RestApi()
abstract class LoginApi {
  factory LoginApi(Dio dioBuilder, {String? baseUrl}) = _LoginApi;

  @POST("/login")
  Future<LoginResponseDataModel> login(@Body() LoginDataModel loginDataModel);
}