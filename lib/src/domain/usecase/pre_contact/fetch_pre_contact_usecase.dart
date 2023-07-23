import 'package:flutter_clean_architecture/src/data/model/models.dart';
import 'package:flutter_clean_architecture/src/domain/repository/pre_contact_repository.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/usecase.dart';

class FetchPreContactUseCase
    extends UseCase<String, List<PreContactDataModel>> {
  final PreContactRepository _preContactRepository;

  FetchPreContactUseCase({required PreContactRepository repository})
      : _preContactRepository = repository;

  @override
  Future<List<PreContactDataModel>> createObservable(String params) {
    return _preContactRepository.fetchPreContact();
  }
}
