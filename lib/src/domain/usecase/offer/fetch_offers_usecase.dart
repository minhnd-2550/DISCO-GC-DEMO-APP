import 'package:flutter_clean_architecture/src/data/model/models.dart';
import 'package:flutter_clean_architecture/src/domain/repository/offer_repository.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/usecase.dart';

class FetchOfferUseCase extends UseCase<String, List<OfferDataModel>> {
  final OfferRepository _offerRepository;

  FetchOfferUseCase({required OfferRepository repository})
      : _offerRepository = repository;

  @override
  Future<List<OfferDataModel>> createObservable(String params) {
    return _offerRepository.fetchOffers(params);
  }
}
