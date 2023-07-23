import '../../data/model/models.dart';

abstract class OfferRepository {
  Future<List<OfferDataModel>> fetchOffers();
}
