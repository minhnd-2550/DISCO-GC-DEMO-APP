import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/pre_contact/fetch_pre_contact_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/pre_contact_view_data_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreContactDetailViewModel extends BaseViewModel {
  final FetchPreContactUseCase _fetchPreContactUseCase;
  final PreContactViewDataModelMapper _preContactItemMapper;

  AsyncValue<List<PreContactViewDataModel>> _preContact =
      const AsyncValue.loading();
  AsyncValue<List<PreContactViewDataModel>> get preContact => _preContact;

  PreContactDetailViewModel(
      {required FetchPreContactUseCase fetchPreContactUseCase,
      PreContactViewDataModelMapper? mapper})
      : _fetchPreContactUseCase = fetchPreContactUseCase,
        _preContactItemMapper = mapper ?? PreContactViewDataModelMapper() {
    getPreContact();
  }

  void getPreContact({bool retry = false}) async {
    if (retry) {
      _preContact = const AsyncValue.loading();
      notifyListeners();
    }

    try {
      final value = await _fetchPreContactUseCase.createObservable('');
      _preContact =
          AsyncValue.data(value.map(_preContactItemMapper.mapperTo).toList());
    } on Exception catch (error) {
      setThrowable(error);

      if (error is BaseException) {
        _preContact = AsyncValue.error(error, StackTrace.empty);
      }
    } finally {
      notifyListeners();
    }
  }
}
