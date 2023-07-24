import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:flutter_clean_architecture/src/data/app_error.dart';
import 'package:flutter_clean_architecture/src/data/mapper/exception_mapper.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/confirmation_api.dart';
import 'package:flutter_clean_architecture/src/domain/repository/confirmation_repository.dart';

class ConfirmationRepositoryImpl implements ConfirmationRepository {
  final ConfirmationApi _confirmationApi;
  final String _apiKey;
  final ExceptionMapper _exceptionMapper;

  ConfirmationRepositoryImpl(this._confirmationApi, String languageCode,
      {String? apiKey, ExceptionMapper? mapper})
      : _apiKey = apiKey ?? Constants.shared().apiKey,
        _exceptionMapper =
            mapper ?? ExceptionMapper(languageCode: languageCode);

  @override
  Future<bool> confirmationProfile() async {
    final response =
        await _confirmationApi.submitProfile(_apiKey).catchError((e) async {
      return throw await _exceptionMapper.mapperTo(AppError.from(e));
    });
    return response.status ?? false;
  }
}
