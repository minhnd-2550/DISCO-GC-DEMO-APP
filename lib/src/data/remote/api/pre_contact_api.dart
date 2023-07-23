import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/src/data/remote/response/pre_contact_response.dart';
import 'package:retrofit/http.dart';

part 'pre_contact_api.g.dart';

@RestApi()
abstract class PreContactApi {
  factory PreContactApi(Dio dioBuilder) = _PreContactApi;

  @GET('/pre_contact_users')
  Future<PreContactResponse> getPreContact(@Query('api_key') String key);
}
