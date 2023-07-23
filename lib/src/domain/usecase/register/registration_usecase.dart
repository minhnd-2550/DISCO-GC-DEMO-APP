import 'package:flutter_clean_architecture/src/domain/repository/registration_repository.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/usecase.dart';

class RegistrationUseCase extends UseCase<String, bool> {
  final RegistrationRepository _registrationRepository;

  RegistrationUseCase({required RegistrationRepository repository})
      : _registrationRepository = repository;

  @override
  Future<bool> createObservable(String params) {
    return _registrationRepository.register();
  }
}
