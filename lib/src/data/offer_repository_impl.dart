import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:flutter_clean_architecture/src/data/app_error.dart';
import 'package:flutter_clean_architecture/src/data/mapper/exception_mapper.dart';
import 'package:flutter_clean_architecture/src/data/model/offer_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/offer_api.dart';
import 'package:flutter_clean_architecture/src/domain/repository/offer_repository.dart';

class OfferRepositoryImpl implements OfferRepository {
  final OfferApi _offerApi;
  final String _apiKey;
  final ExceptionMapper _exceptionMapper;

  OfferRepositoryImpl(this._offerApi, String languageCode,
      {String? apiKey, ExceptionMapper? mapper})
      : _apiKey = apiKey ?? Constants.shared().apiKey,
        _exceptionMapper =
            mapper ?? ExceptionMapper(languageCode: languageCode);

  @override
  Future<List<OfferDataModel>> fetchOffers(String? type) async {
    final response = await _offerApi.getOffers(type ?? '', _apiKey).catchError(
        (e) async => throw await _exceptionMapper.mapperTo(AppError.from(e)));
    return response.data ?? [];
  }
}
