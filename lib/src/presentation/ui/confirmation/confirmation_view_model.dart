import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/confirmation/submit_confirmation_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/confirmation_view_data_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfirmationViewModel extends BaseViewModel {
  final SubmitConfirmationUseCase _confirmationUseCase;

  AsyncValue<bool?> _confirmationResult = const AsyncValue.data(null);
  AsyncValue<bool?> get confirmationResult => _confirmationResult;

  ConfirmationViewModel(
      {required SubmitConfirmationUseCase confirmationUseCase,
      ConfirmationViewDataModelMapper? mapper})
      : _confirmationUseCase = confirmationUseCase;

  Future<bool?> submitProfile() async {
    _confirmationResult = const AsyncValue.loading();
    notifyListeners();
    try {
      final value = await _confirmationUseCase.createObservable('s');
      _confirmationResult = AsyncValue.data(value);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Fluttertoast.showToast(msg: '会員登録が完了しました。ようこそGlobalCareer.com!');
      });
      return value;
    } on Exception catch (error) {
      setThrowable(error);

      if (error is BaseException) {
        _confirmationResult = AsyncValue.error(error, StackTrace.empty);
      }
      return false;
    } finally {
      notifyListeners();
    }
  }
}
