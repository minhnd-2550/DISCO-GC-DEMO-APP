import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:flutter_clean_architecture/src/data/model/top_data_model.dart';

part 'top_api.g.dart';

@RestApi()
abstract class TopApi {
  factory TopApi(Dio dioBuilder, {String? baseUrl}) = _TopApi;

  @GET('/my_pages')
  Future<TopDataModel> getMyPages(
      @Query('api_key') String key);
}