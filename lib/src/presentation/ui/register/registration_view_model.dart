import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/register/registration_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/registration_view_data_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegistrationViewModel extends BaseViewModel {
  final RegistrationUseCase _registrationUseCase;

  bool _checkConfirm = false;

  bool get checkConfirm => _checkConfirm;

  AsyncValue<bool?> _registrationResult = const AsyncValue.data(null);
  AsyncValue<bool?> get registrationResult => _registrationResult;

  RegistrationViewModel(
      {required RegistrationUseCase registrationUseCase,
      RegistrationViewDataModelMapper? mapper})
      : _registrationUseCase = registrationUseCase;

  void toggleConfirm() {
    _checkConfirm = !_checkConfirm;
    notifyListeners();
  }

  Future<bool?> registration() async {
    _registrationResult = const AsyncValue.loading();
    notifyListeners();
    try {
      final value = await _registrationUseCase.createObservable('s');
      _registrationResult = AsyncValue.data(value);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Fluttertoast.showToast(msg: '会員登録が完了しました。ようこそGlobalCareer.com!');
      });
      return value;
    } on Exception catch (error) {
      setThrowable(error);

      if (error is BaseException) {
        _registrationResult = AsyncValue.error(error, StackTrace.empty);
      }
      return false;
    } finally {
      notifyListeners();
    }
  }
}
