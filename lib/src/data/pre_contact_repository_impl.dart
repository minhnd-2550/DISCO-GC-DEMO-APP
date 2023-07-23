import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:flutter_clean_architecture/src/data/app_error.dart';
import 'package:flutter_clean_architecture/src/data/mapper/exception_mapper.dart';
import 'package:flutter_clean_architecture/src/data/model/pre_contact_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/pre_contact_api.dart';
import 'package:flutter_clean_architecture/src/domain/repository/pre_contact_repository.dart';

class PreContactRepositoryImpl implements PreContactRepository {
  final PreContactApi _preContactApi;
  final String _apiKey;
  final ExceptionMapper _exceptionMapper;

  PreContactRepositoryImpl(this._preContactApi, String languageCode,
      {String? apiKey, ExceptionMapper? mapper})
      : _apiKey = apiKey ?? Constants.shared().apiKey,
        _exceptionMapper =
            mapper ?? ExceptionMapper(languageCode: languageCode);

  @override
  Future<List<PreContactDataModel>> fetchPreContact() async {
    final response =
        await _preContactApi.getPreContact(_apiKey).catchError((e) async {
      return throw await _exceptionMapper.mapperTo(AppError.from(e));
    });
    return response.data ?? [];
  }
}
