import 'package:flutter_clean_architecture/src/domain/repository/confirmation_repository.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/usecase.dart';

class SubmitConfirmationUseCase extends UseCase<String, bool> {
  final ConfirmationRepository _confirmationRepository;

  SubmitConfirmationUseCase({required ConfirmationRepository repository})
      : _confirmationRepository = repository;

  @override
  Future<bool> createObservable(String params) {
    return _confirmationRepository.confirmationProfile();
  }
}
