import 'package:flutter_clean_architecture/src/presentation/base/loading_state_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/di/use_case_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/detail/detail_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/home/home_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/offers/offers_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/pre_contact_detail/pre_contact_detail_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/register/registration_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loadingStateProvider = ChangeNotifierProvider(
  (ref) => LoadingStateViewModel(),
);

final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>(
  (ref) =>
      HomeViewModel(fetchMovieUseCase: ref.watch(fetchMoviesUseCaseProvider)),
);

final offersViewModelProvider = ChangeNotifierProvider<OffersViewModel>(
  (ref) =>
      OffersViewModel(fetchOfferUseCase: ref.watch(fetchOffersUseCaseProvider)),
);

final preContactViewModelProvider =
    ChangeNotifierProvider<PreContactDetailViewModel>(
  (ref) => PreContactDetailViewModel(
      fetchPreContactUseCase: ref.watch(fetchPreContactUseCaseProvider)),
);

final registrationViewModelProvider =
    ChangeNotifierProvider<RegistrationViewModel>(
  (ref) => RegistrationViewModel(
      registrationUseCase: ref.watch(registrationUseCaseProvider)),
);

final detailViewModelProvider =
    ChangeNotifierProvider.autoDispose.family<DetailViewModel, int>(
  (ref, id) => DetailViewModel(
    getMovieImageUseCase: ref.watch(getMovieImageUseCaseProvider),
    getMovieInfoUseCase: ref.watch(getMovieInfoUseCaseProvider),
  ),
);