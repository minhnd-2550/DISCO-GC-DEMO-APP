import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_content_form.dart';
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
          Expanded(
            child: BaseContentForm(
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
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                backgroundColor: Colors.green,
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
                      'このURLは有効期限が切れています。お手数ですが、\n再度新規会員登録をお願いいたします。',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,

                        ),
                        children: [
                          const TextSpan(text: '連続10回ログインに失敗すると、アカウントがロックされてログインできなくなります。\nログインの解除は'),
                          TextSpan(
                              text: 'お問い合わせ',
                            style: const TextStyle(
                              color: Colors.blue,
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
                                  '「パスワードを忘れた方はこちら」よりパスワードの再設定を行ってください。'
                          ),
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
    );
  }
}
