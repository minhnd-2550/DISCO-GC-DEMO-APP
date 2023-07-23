import 'package:flutter_clean_architecture/src/data/model/seminar_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/online_seminar_api.dart';
import 'package:flutter_clean_architecture/src/data/online_seminar_repository_impl.dart';
import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class SeminarEnterViewModel extends ChangeNotifier {
  bool _loading = false;
  SeminarDataModel _seminarDataModel = const SeminarDataModel();

  bool get loading => _loading;
  SeminarDataModel get seminarDataModel => _seminarDataModel;

  SeminarEnterViewModel() {
    getSeminar();
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setSeminar(SeminarDataModel seminarDataModel) {
    _seminarDataModel = seminarDataModel;
  }

  getSeminar() async {
    setLoading(true);

    Dio dio = Dio(
      BaseOptions(
        baseUrl: Constants.shared().endpoint,
      ),
    );

    final OnlineSeminarApi onlineSeminarApi = OnlineSeminarApi(dio);

    var response =
        await OnlineSeminarRepositoryImpl(onlineSeminarApi: onlineSeminarApi)
            .fetchSeminar();
    setSeminar(response);
    setLoading(false);
  }
}
