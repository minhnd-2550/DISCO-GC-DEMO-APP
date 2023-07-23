import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:flutter_clean_architecture/src/data/app_error.dart';
import 'package:flutter_clean_architecture/src/data/mapper/exception_mapper.dart';
import 'package:flutter_clean_architecture/src/data/model/login_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/login_response_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/login_api.dart';
import 'package:flutter_clean_architecture/src/domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl({
    required LoginApi loginApi,
  }) : _loginApi = loginApi;

  late final LoginApi _loginApi;

  @override
  Future<LoginResponseDataModel> login(LoginDataModel loginDataModel) async {
    final LoginResponseDataModel response = await _loginApi.login(loginDataModel).catchError((object) {
      print(object);
      throw object;
    });
    return response;
  }
}