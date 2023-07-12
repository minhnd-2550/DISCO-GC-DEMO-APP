import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/offer/fetch_offers_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/offer_view_data_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OffersViewModel extends BaseViewModel {
  final FetchOfferUseCase _fetchOfferUseCase;
  final OfferViewDataModelMapper _offerItemMapper;

  AsyncValue<List<OfferViewDataModel>> _offers = const AsyncValue.loading();
  AsyncValue<List<OfferViewDataModel>> get offers => _offers;

  OffersViewModel(
      {required FetchOfferUseCase fetchOfferUseCase,
      OfferViewDataModelMapper? mapper})
      : _fetchOfferUseCase = fetchOfferUseCase,
        _offerItemMapper = mapper ?? OfferViewDataModelMapper() {
    getOffers();
  }

  void getOffers({bool retry = false}) async {
    if (retry) {
      _offers = const AsyncValue.loading();
      notifyListeners();
    }

    try {
      final value = await _fetchOfferUseCase.createObservable('');
      _offers = AsyncValue.data(value.map(_offerItemMapper.mapperTo).toList());
    } on Exception catch (error) {
      setThrowable(error);

      if (error is BaseException) {
        _offers = AsyncValue.error(error, StackTrace.empty);
      }
    } finally {
      notifyListeners();
    }
  }
}
