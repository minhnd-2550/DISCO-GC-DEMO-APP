import 'package:json_annotation/json_annotation.dart';

import '../../model/models.dart';
part 'offer_response.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class OfferResponse {
  @JsonKey(name: 'data')
  final List<OfferDataModel>? data;

  OfferResponse({this.data});

  factory OfferResponse.fromJson(Map<String, dynamic> json) =>
      _$OfferResponseFromJson(json);
}
