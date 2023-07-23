import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_stateless_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/login/login_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/register/component/registration_form.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/register/component/registration_info.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/register/registration_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/step/step_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/footer.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const registrationPageRoutes = '/register';

class RegistrationPage extends BaseStatelessView<RegistrationViewModel> {
  RegistrationPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  void _submitForm(BuildContext context, ref, callbackMethod) async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.save();
      var registrationResult = await ref
          .watch(registrationViewModelProvider.notifier)
          .registration(context);
      if (registrationResult) {
        callbackMethod();
      }
    } else {}
  }

  Widget _createBody(BuildContext context) {
    void callbackMethod() async {
      await Navigator.pushNamed(context, stepPageRoutes);
    }

    return Consumer(builder: (context, ref, _) {
      var checkConfirm = ref.watch(registrationViewModelProvider).checkConfirm;
      return Listener(
        onPointerDown: (PointerDownEvent event) =>
            FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RegistrationForm(context),
                      const SizedBox(
                        height: 28.0,
                      ),
                      RegistrationInfo(context),
                      const SizedBox(
                        height: 28.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: checkConfirm,
                            onChanged: (bool? value) {
                              ref
                                  .watch(registrationViewModelProvider)
                                  .toggleConfirm();
                            },
                            activeColor: ColorName.primaryUserColor,
                          ),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "GlobalCareer.com会員規約",
                                style: TextStyle(color: Color(0xFF3a50c9))),
                            TextSpan(
                              text: "に同意する",
                            )
                          ])),
                        ],
                      ),
                      const SizedBox(
                        height: 48.0,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () =>
                                {_submitForm(context, ref, callbackMethod)},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorName.primaryUserColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                elevation: 8.0,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0)),
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))),
        ),
      );
    });
  }

  void _goToLogin(BuildContext context) async {
    await Navigator.pushNamed(context, loginPageRoutes);
  }

  @override
  Widget createView(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final registrationResult = ref.watch(registrationViewModelProvider
          .select((value) => value.registrationResult));
      return registrationResult.when(data: (data) {
        return Scaffold(
          backgroundColor: ColorName.backgroundColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF26BFA1),
                    Color(0xFF1AA1A3),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
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
                  Icons.mail,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.info, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  _goToLogin(context);
                },
                icon: const Icon(
                  Icons.login_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(child: _createBody(context)),
              const Footer(),
            ],
          ),
          resizeToAvoidBottomInset: false,
        );
      }, loading: () {
        return const Loading();
      }, error: (e, s) {
        return const SizedBox();
      });
    });
  }

  @override
  ProviderBase<RegistrationViewModel> get viewModelProvider =>
      registrationViewModelProvider;
}
