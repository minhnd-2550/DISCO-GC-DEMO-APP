import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/register/component/registration_form.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/register/component/registration_info.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/footer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const registrationPageRoutes = '/register';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        title: const Text(
          'GlobalCareer.com',
          style: TextStyle(
              fontSize: 28, color: Colors.white, fontStyle: FontStyle.italic),
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
          Expanded(child: _createBody(context)),
          const Footer(),
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  void _submitForm(BuildContext context) async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.save();
    } else {}
  }

  Widget _createBody(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
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
                            value: false,
                            onChanged: (bool? value) {},
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
                            onPressed: () => {_submitForm(context)},
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
}
