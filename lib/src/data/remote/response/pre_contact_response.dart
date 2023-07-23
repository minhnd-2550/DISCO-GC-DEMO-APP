import 'package:json_annotation/json_annotation.dart';

import '../../model/models.dart';
part 'pre_contact_response.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class PreContactResponse {
  final List<PreContactDataModel>? data;

  PreContactResponse({this.data});

  factory PreContactResponse.fromJson(Map<String, dynamic> json) =>
      _$PreContactResponseFromJson(json);
}
