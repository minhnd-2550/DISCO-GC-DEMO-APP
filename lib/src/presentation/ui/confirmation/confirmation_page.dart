import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_stateless_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/confirmation/confirmation_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/top/top_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/button_with_icon.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/footer.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'component/basic_information.dart';
import 'component/education_background.dart';

const confirmationPageRoutes = '/confirmation';

class ConfirmationPage extends BaseStatelessView<ConfirmationViewModel> {
  const ConfirmationPage({Key? key}) : super(key: key);

  Widget _createBody(BuildContext context, callbackMethod, ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "内容を確認してください。",
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const BasicInformation(),
            const SizedBox(
              height: 28.0,
            ),
            const EducationBackground(),
            const SizedBox(
              height: 28.0,
            ),
            ButtonWithIcon(
              text: "保存する",
              borderRadius: 32.0,
              color: 0xFFfa4141,
              textFontSize: 14.0,
              textFontWeight: FontWeight.bold,
              onPressed: () => {_goToTop(ref, callbackMethod)},
            )
          ],
        ),
      ),
    );
  }

  void _goToTop(ref, callbackMethod) async {
    var registrationResult =
        await ref.watch(confirmationViewModelProvider.notifier).submitProfile();
    if (registrationResult) {
      callbackMethod();
    }
  }

  @override
  Widget createView(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      void callbackMethod() async {
        await Navigator.pushNamed(context, topPageRoutes);
      }

      final confirmationResult = ref.watch(confirmationViewModelProvider
          .select((value) => value.confirmationResult));
      return confirmationResult.when(data: (data) {
        return Scaffold(
          backgroundColor: ColorName.backgroundColor,
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            systemOverlayStyle: const SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: Colors.white,
              // Status bar brightness (optional)
              statusBarIconBrightness:
                  Brightness.dark, // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
            elevation: 0,
            title: const Text(
              'GlobalCareer.com',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.login_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(child: _createBody(context, callbackMethod, ref)),
              const Footer(),
            ],
          ),
        );
      }, loading: () {
        return const Loading();
      }, error: (e, s) {
        return const SizedBox();
      });
    });
  }

  @override
  ProviderBase<ConfirmationViewModel> get viewModelProvider =>
      confirmationViewModelProvider;
}
