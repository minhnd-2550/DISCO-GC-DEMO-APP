import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:flutter_clean_architecture/src/data/model/top_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/top_api.dart';
import 'package:flutter_clean_architecture/src/domain/repository/top_repository.dart';

class TopRepositoryImpl implements TopRepository {
  TopRepositoryImpl({
    required TopApi topApi,
  }) : _topApi = topApi;

  late final TopApi _topApi;

  @override
  Future<TopDataModel> fetchMyPages() async {
    final TopDataModel response = await _topApi
        .getMyPages(Constants.shared().apiKey)
        .catchError((object) {
      throw object;
    });
    return response;
  }
}
