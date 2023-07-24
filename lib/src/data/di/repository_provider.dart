import 'package:flutter_clean_architecture/src/data/confirmation_repository_impl.dart';
import 'package:flutter_clean_architecture/src/data/local/app_storage.dart';
import 'package:flutter_clean_architecture/src/data/movie_repository_impl.dart';
import 'package:flutter_clean_architecture/src/data/offer_repository_impl.dart';
import 'package:flutter_clean_architecture/src/domain/repository/confirmation_repository.dart';
import 'package:flutter_clean_architecture/src/domain/repository/movie_repository.dart';
import 'package:flutter_clean_architecture/src/domain/repository/offer_repository.dart';
import 'package:flutter_clean_architecture/src/data/pre_contact_repository_impl.dart';
import 'package:flutter_clean_architecture/src/data/registration_repository_impl.dart';
import 'package:flutter_clean_architecture/src/domain/repository/pre_contact_repository.dart';
import 'package:flutter_clean_architecture/src/domain/repository/registration_repository.dart';
import 'package:flutter_clean_architecture/src/presentation/di/app_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'network_provider.dart';

final appStorageProvider = Provider<AppStorage>(
  (ref) => AppStorage.init(),
);

final movieRepositoryProvider = Provider<MovieRepository>(
  (ref) => MovieRepositoryImpl(
      ref.watch(movieApiProvider), ref.watch(localeCodeProvider)),
);

final offerRepositoryProvider = Provider<OfferRepository>(
  (ref) => OfferRepositoryImpl(
      ref.watch(offerApiProvider), ref.watch(localeCodeProvider)),
);

final preContactRepositoryProvider = Provider<PreContactRepository>(
  (ref) => PreContactRepositoryImpl(
      ref.watch(preContactApiProvider), ref.watch(localeCodeProvider)),
);

final registrationRepositoryProvider = Provider<RegistrationRepository>(
  (ref) => RegistrationRepositoryImpl(
      ref.watch(registrationApiProvider), ref.watch(localeCodeProvider)),
);

final confirmationRepositoryProvider = Provider<ConfirmationRepository>(
  (ref) => ConfirmationRepositoryImpl(
      ref.watch(confirmationApiProvider), ref.watch(localeCodeProvider)),
);
