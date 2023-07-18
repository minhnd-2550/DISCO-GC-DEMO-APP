import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/register/registration_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/top/top_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/block_info_layout.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/footer.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/text_input.dart';
import 'package:url_launcher/url_launcher.dart';

const loginPageRoutes = '/';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              child: BlockInfoLayout(
                title: 'GlobalCareer.comにログイン',
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const TextFieldInput(
                        label: 'メールアドレス',
                        isRequired: true,
                        prefixIcon: Icon(Icons.email),
                      ),
                      const SizedBox(height: 24.0),
                      const TextFieldInput(
                        label: 'パスワード',
                        isRequired: true,
                        isVisible: false,
                        prefixIcon: Icon(Icons.lock),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  _login(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: ColorName.primaryUserColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  elevation: 8.0,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('ログイン'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'パスワードを忘れた方はこちら',
                        style: TextStyle(
                          color: Color(0xff3a50c9),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {
                          _goToRegister(context);
                        },
                        child: const Text(
                          'まだ会員でない方はこちら（会員登録）',
                          style: TextStyle(
                            color: Color(0xff3a50c9),
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            const TextSpan(
                                text:
                                    '連続10回ログインに失敗すると、アカウントがロックされてログインできなくなります。\nログインの解除は'),
                            TextSpan(
                              text: 'お問い合わせ',
                              style: const TextStyle(
                                color: Color(0xff3a50c9),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://google.com');
                                },
                            ),
                            const TextSpan(
                                text: 'よりGlobalCareer.com事務局までご連絡ください。\n\n'
                                    'なお、アカウントロック解除には時間がかかる場合があります。\n'
                                    'パスワードがわからない場合は、アカウントがロックされる前に、\n'
                                    '「パスワードを忘れた方はこちら」よりパスワードの再設定を行ってください。'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  void _login(BuildContext context) async {
    await Navigator.pushNamed(context, topPageRoutes);
  }

  void _goToRegister(BuildContext context) async {
    await Navigator.pushNamed(context, registrationPageRoutes);
  }
}
