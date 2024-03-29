import 'package:flutter_clean_architecture/src/domain/usecase/confirmation/submit_confirmation_usecase.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/offer/fetch_offers_usecase.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/pre_contact/fetch_pre_contact_usecase.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/register/registration_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_clean_architecture/src/data/di/repository_provider.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/get_movie_image_usecase.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/get_movie_info_usecase.dart';

final fetchMoviesUseCaseProvider = Provider<FetchMovieUseCase>(
  (ref) => FetchMovieUseCase(repository: ref.watch(movieRepositoryProvider)),
);

final getMovieInfoUseCaseProvider = Provider<GetMovieInfoUseCase>(
  (ref) => GetMovieInfoUseCase(repository: ref.watch(movieRepositoryProvider)),
);

final getMovieImageUseCaseProvider = Provider<GetMovieImageUseCase>(
  (ref) => GetMovieImageUseCase(repository: ref.watch(movieRepositoryProvider)),
);

final fetchOffersUseCaseProvider = Provider<FetchOfferUseCase>(
  (ref) => FetchOfferUseCase(repository: ref.watch(offerRepositoryProvider)),
);

final fetchPreContactUseCaseProvider = Provider<FetchPreContactUseCase>(
  (ref) => FetchPreContactUseCase(
      repository: ref.watch(preContactRepositoryProvider)),
);

final registrationUseCaseProvider = Provider<RegistrationUseCase>(
  (ref) => RegistrationUseCase(
      repository: ref.watch(registrationRepositoryProvider)),
);

final confirmationUseCaseProvider = Provider<SubmitConfirmationUseCase>(
  (ref) => SubmitConfirmationUseCase(
      repository: ref.watch(confirmationRepositoryProvider)),
);
