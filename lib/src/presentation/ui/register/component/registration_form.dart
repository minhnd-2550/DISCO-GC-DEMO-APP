import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/extension/build_context.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/dynamic_input.dart';
import 'package:flutter_clean_architecture/src/utils/validator.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm(BuildContext context, {Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final Validators validator = Validators();

  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  late FocusNode emailFocusNode;
  late FocusNode passwordFocusNode;
  late FocusNode confirmPasswordFocusNode;

  bool obscureText = true;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();

    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    confirmPasswordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();

    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
  }

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF874da2), Color(0xFF884d80)]),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20.0,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  context.res().registerTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Email
                DynamicInput(
                  controller: emailController,
                  obscureText: false,
                  focusNode: emailFocusNode,
                  toggleObscureText: null,
                  validator: validator.emailValidator,
                  prefIcon: const Icon(
                    Icons.mail,
                    size: 22.0,
                  ),
                  labelText: context.res().emailAddress,
                  textInputAction: TextInputAction.next,
                  isNonPasswordField: true,
                  required: true,
                ),
                const SizedBox(
                  height: 24.0,
                ),

                DynamicInput(
                  controller: passwordController,
                  labelText: context.res().password,
                  obscureText: obscureText,
                  focusNode: passwordFocusNode,
                  toggleObscureText: toggleObscureText,
                  validator: validator.passwordValidator,
                  prefIcon: const Icon(Icons.lock, size: 22.0),
                  textInputAction: TextInputAction.next,
                  isNonPasswordField: false,
                  required: true,
                ),

                const SizedBox(
                  height: 24.0,
                ),

                DynamicInput(
                  controller: confirmPasswordController,
                  focusNode: confirmPasswordFocusNode,
                  isNonPasswordField: false,
                  labelText: context.res().passwordConfirm,
                  obscureText: obscureText,
                  prefIcon: const Icon(Icons.lock, size: 22.0),
                  textInputAction: TextInputAction.done,
                  toggleObscureText: toggleObscureText,
                  validator: (val) => validator.confirmPasswordValidator(
                      val, passwordController.text),
                  required: true,
                ),
                const SizedBox(
                  height: 24.0,
                ),

                Text(
                  context.res().passwordCondition,
                  style: const TextStyle(fontSize: 12.0, color: Colors.black),
                ),
                const SizedBox(
                  height: 24.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
