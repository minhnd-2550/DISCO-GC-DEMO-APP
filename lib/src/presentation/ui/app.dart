import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_clean_architecture/src/presentation/di/app_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/login/login_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/offers/offers_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/register/registration_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/confirmation/confirmation.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/theme/theme.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/step/step_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/top/top_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/seminar/seminar_enter.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'detail/detail_page.dart';

class Application extends ConsumerWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      localizationsDelegates: Resource.localizationsDelegates,
      supportedLocales: Resource.supportedLocales,
      localeResolutionCallback:
          (Locale? locale, Iterable<Locale> supportedLocales) {
        if (supportedLocales.any((element) =>
            locale?.languageCode.contains(element.toString()) == true)) {
          String currentLanguageCode = ref.watch(localeCodeProvider);
          if (currentLanguageCode != locale!.languageCode) {
            SchedulerBinding.instance.addPostFrameCallback((_) {
              ref.watch(localeCodeProvider.notifier).state =
                  locale.languageCode;
            });
          }

          return locale;
        }
        return const Locale('en', '');
      },
      routes: {
        seminarEnterPage: (_) => const SeminarEnterPage(),
        topPageRoutes: (_) => const TopPage(),
        stepPageRoutes: (_) => const StepPage(),
        detailPageRoutes: (_) => const DetailPage(),
        loginPageRoutes: (_) => const LoginPage(),
        registrationPageRoutes: (_) => const RegistrationPage(),
        confirmationPageRoutes: (_) => const Confirmation(),
        offersPageRoutes: (_) => const OffersPage(),
      },
    );
  }
}
