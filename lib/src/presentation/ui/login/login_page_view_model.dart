import 'package:flutter_clean_architecture/src/data/model/login_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/login_response_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/login_api.dart';
import 'package:flutter_clean_architecture/src/data/login_repository_impl.dart';
import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class LoginPageViewModel extends ChangeNotifier {
  bool _loading = false;
  LoginResponseDataModel _loginResponseDataModel = LoginResponseDataModel();

  bool get loading => _loading;
  LoginResponseDataModel get loginResponseDataModel => _loginResponseDataModel;

  LoginPageViewModel() {}

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setResponse(LoginResponseDataModel loginResponseDataModel) {
    _loginResponseDataModel = loginResponseDataModel;
  }

  login(LoginDataModel loginDataModel) async {
    setLoading(true);

    Dio dio = Dio(
      BaseOptions(
        baseUrl: Constants.shared().endpoint,
      ),
    );

    final LoginApi loginApi = LoginApi(dio);

    var response =
        await LoginRepositoryImpl(loginApi: loginApi).login(loginDataModel);
    setResponse(response);
    setLoading(false);
  }
}
