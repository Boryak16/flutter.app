import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learnyngm/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool passShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  defaultTextField(
                      label: 'enter your email',
                      prefix: Icons.email,
                      controller: emailController,
                      onChange: (String value) {
                        print(value);
                      },
                      type: TextInputType.emailAddress,
                      validat: (String value) {
                        if (value.isEmpty) {
                          return "email must not be empty";
                        }
                      }),
                  const SizedBox(height: 15),
                  defaultTextField(
                      label: 'enter your password',
                      prefix: Icons.lock,
                      controller: passwordController,
                      onChange: (String value) {
                        print(value);
                      },
                      type: TextInputType.visiblePassword,
                      isPassword: passShow,
                      suffix:
                          passShow ? Icons.visibility_off : Icons.visibility,
                      suffixPressed: togglePasswordView,
                      validat: (String value) {
                        if (value.isEmpty) {
                          return "password must not be empty";
                        }
                      }),
                  const SizedBox(height: 15),
                  defaultButton(
                    text: 'login',
                    radius: 30,
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  defaultButton(
                    text: 'register',
                    radius: 30,
                    function: () {},
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Text('Don\'t have an account ?'),
                    TextButton(onPressed: () {}, child: Text('Sign up now.'))
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void togglePasswordView() {
    setState(() {
      passShow = !passShow;
    });
  }
}
