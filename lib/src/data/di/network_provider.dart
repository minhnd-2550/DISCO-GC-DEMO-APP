import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/confirmation_api.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/offer_api.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/pre_contact_api.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/registration_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/movie_api.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/user_api.dart';
import 'package:flutter_clean_architecture/src/data/remote/builder/dio_builder.dart';

final dioBuilderProvider = Provider<Dio>(
  (ref) => DioBuilder.getInstance(),
);

final authBuilderProvider = Provider<Dio>(
  (ref) => DioBuilder.getInstance(
      options: BaseOptions(baseUrl: 'http://domain.com/refreshToken')),
);

final movieApiProvider = Provider<MovieApi>(
  (ref) => MovieApi(ref.watch(dioBuilderProvider)),
);

final userApiProvider = Provider<UserApi>(
  (ref) => UserApi(ref.watch(authBuilderProvider)),
);

final offerApiProvider = Provider<OfferApi>(
  (ref) => OfferApi(ref.watch(dioBuilderProvider)),
);

final preContactApiProvider = Provider<PreContactApi>(
  (ref) => PreContactApi(ref.watch(dioBuilderProvider)),
);

final registrationApiProvider = Provider<RegistrationApi>(
  (ref) => RegistrationApi(ref.watch(dioBuilderProvider)),
);

final confirmationApiProvider = Provider<ConfirmationApi>(
  (ref) => ConfirmationApi(ref.watch(dioBuilderProvider)),
);
