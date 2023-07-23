import 'package:flutter_clean_architecture/src/data/model/login_response_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/login_data_model.dart';

abstract class LoginRepository {
  Future<LoginResponseDataModel> login(LoginDataModel loginDataModel);
}