import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:flutter_clean_architecture/src/data/app_error.dart';
import 'package:flutter_clean_architecture/src/data/mapper/exception_mapper.dart';
import 'package:flutter_clean_architecture/src/data/model/profile_current_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/current_step_api.dart';
import 'package:flutter_clean_architecture/src/domain/repository/profile_current_repository.dart';
import 'package:flutter_clean_architecture/src/data/remote/response/profile_current_response.dart';

class ProfileCurrentRepositoryImpl implements ProfileCurrentRepository {
  ProfileCurrentRepositoryImpl({
    required CurrentStepApi currentStepApi,
  }) : _currentStepApi = currentStepApi;

  late final CurrentStepApi _currentStepApi;

  @override
  Future<ProfileCurrentDataModel> fetchProfile() async {
    final ProfileCurrentDataModel response = await _currentStepApi.getProfileCurrent(Constants.shared().apiKey).catchError((object) {
      print(object);
      throw object;
    });
    return response;
  }
}