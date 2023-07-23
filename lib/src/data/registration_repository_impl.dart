import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:flutter_clean_architecture/src/data/app_error.dart';
import 'package:flutter_clean_architecture/src/data/mapper/exception_mapper.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/registration_api.dart';
import 'package:flutter_clean_architecture/src/domain/repository/registration_repository.dart';

class RegistrationRepositoryImpl implements RegistrationRepository {
  final RegistrationApi _registrationApi;
  final String _apiKey;
  final ExceptionMapper _exceptionMapper;

  RegistrationRepositoryImpl(this._registrationApi, String languageCode,
      {String? apiKey, ExceptionMapper? mapper})
      : _apiKey = apiKey ?? Constants.shared().apiKey,
        _exceptionMapper =
            mapper ?? ExceptionMapper(languageCode: languageCode);

  @override
  Future<bool> register() async {
    final response =
        await _registrationApi.register(_apiKey).catchError((e) async {
      return throw await _exceptionMapper.mapperTo(AppError.from(e));
    });
    return response.status ?? false;
  }
}
