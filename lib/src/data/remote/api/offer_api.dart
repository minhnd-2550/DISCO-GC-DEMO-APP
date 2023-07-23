import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:flutter_clean_architecture/src/data/remote/response/offer_response.dart';

part 'offer_api.g.dart';

@RestApi()
abstract class OfferApi {
  factory OfferApi(Dio dioBuilder) = _OfferApi;

  @GET('/invitations')
  Future<OfferResponse> getOffers(@Query('api_key') String key);
}
