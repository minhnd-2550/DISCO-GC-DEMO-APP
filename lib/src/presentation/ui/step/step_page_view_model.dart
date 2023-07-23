import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/profile_current/fetch_profile_current_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/profile_current_view_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/profile_current_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/current_step_api.dart';
import 'package:flutter_clean_architecture/src/data/profile_current_repository_impl.dart';
import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class StepPageViewModel extends ChangeNotifier {
  bool _loading = false;
  ProfileCurrentDataModel _profileCurrentDataModel = ProfileCurrentDataModel();

  bool get loading => _loading;
  ProfileCurrentDataModel get profileCurrentDataModel => _profileCurrentDataModel;

  StepPageViewModel() {
    getProfileCurrent();
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setProfileCurrent(ProfileCurrentDataModel profileCurrentDataModel) {
    _profileCurrentDataModel = profileCurrentDataModel;
  }

  getProfileCurrent() async {
    print("huy call api");
    setLoading(true);

    Dio dio = Dio(
      BaseOptions(
        baseUrl: Constants.shared().endpoint,
      ),
    );

    final CurrentStepApi currentStepApi = CurrentStepApi(dio);

    var response = await ProfileCurrentRepositoryImpl(currentStepApi: currentStepApi).fetchProfile();
    setProfileCurrent(response);
    setLoading(false);
  }
}
