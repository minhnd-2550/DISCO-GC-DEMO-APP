import 'package:flutter_clean_architecture/src/domain/repository/profile_current_repository.dart';
import 'package:flutter_clean_architecture/src/data/model/profile_current_data_model.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/usecase.dart';

class FetchProfileCurrentUseCase
    extends UseCase<String, ProfileCurrentDataModel> {
  final ProfileCurrentRepository _profileCurrentRepository;

  FetchProfileCurrentUseCase({required ProfileCurrentRepository repository})
      : _profileCurrentRepository = repository;

  @override
  Future<ProfileCurrentDataModel> createObservable(String params) {
    return _profileCurrentRepository.fetchProfile();
  }
}
