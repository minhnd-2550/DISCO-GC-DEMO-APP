import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:flutter_clean_architecture/src/data/model/seminar_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/online_seminar_api.dart';
import 'package:flutter_clean_architecture/src/domain/repository/online_seminar_repository.dart';

class OnlineSeminarRepositoryImpl implements OnlineSeminarRepository {
  OnlineSeminarRepositoryImpl({
    required OnlineSeminarApi onlineSeminarApi,
  }) : _onlineSeminarApi = onlineSeminarApi;

  late final OnlineSeminarApi _onlineSeminarApi;

  @override
  Future<SeminarDataModel> fetchSeminar() async {
    final SeminarDataModel response = await _onlineSeminarApi
        .getOnlineSeminar(Constants.shared().apiKey)
        .catchError((object) {
      throw object;
    });
    return response;
  }
}
