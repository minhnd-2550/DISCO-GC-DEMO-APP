import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:flutter_clean_architecture/src/data/model/profile_current_data_model.dart';

part 'current_step_api.g.dart';

@RestApi()
abstract class CurrentStepApi {
  factory CurrentStepApi(Dio dioBuilder, {String? baseUrl}) = _CurrentStepApi;

  @GET('/current')
  Future<ProfileCurrentDataModel> getProfileCurrent(
      @Query('api_key') String key);
}