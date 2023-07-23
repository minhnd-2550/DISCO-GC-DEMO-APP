import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:flutter_clean_architecture/src/data/model/seminar_data_model.dart';

part 'online_seminar_api.g.dart';

@RestApi()
abstract class OnlineSeminarApi {
  factory OnlineSeminarApi(Dio dioBuilder, {String? baseUrl}) = _OnlineSeminarApi;

  @GET('/online_seminars/s4ht6ipy')
  Future<SeminarDataModel> getOnlineSeminar(
      @Query('api_key') String key);
}