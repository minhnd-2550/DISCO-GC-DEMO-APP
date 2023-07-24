import 'package:flutter_clean_architecture/src/data/model/top_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/top_api.dart';
import 'package:flutter_clean_architecture/src/data/top_repository_impl.dart';
import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class TopPageViewModel extends ChangeNotifier {
  bool _loading = false;
  TopDataModel _topDataModel =
  const TopDataModel();

  bool get loading => _loading;
  TopDataModel get topDataModel =>
      _topDataModel;

  TopPageViewModel() {
    getMyPages();
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setMyPages(TopDataModel topDataModel) {
    _topDataModel = topDataModel;
  }

  getMyPages() async {
    setLoading(true);

    Dio dio = Dio(
      BaseOptions(
        baseUrl: Constants.shared().endpoint,
      ),
    );

    final TopApi topApi = TopApi(dio);

    var response =
    await TopRepositoryImpl(topApi: topApi).fetchMyPages();
    setMyPages(response);
    setLoading(false);
  }
}
