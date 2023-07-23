import '../../data/model/models.dart';

abstract class PreContactRepository {
  Future<List<PreContactDataModel>> fetchPreContact();
}
