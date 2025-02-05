import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';
import 'package:flutter_travel/ui/widgets/button_widget.dart';
import 'package:flutter_travel/ui/widgets/input_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController hobyController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            const MyTitle(),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              child: Column(
                children: [
                  InputField(
                    title: 'Full Name',
                    placeholder: 'Your full name',
                    controller: fullNameController,
                  ),
                  InputField(
                    title: 'Email',
                    placeholder: 'Your email',
                    controller: emailController,
                    isEmail: true,
                  ),
                  InputField(
                    title: 'Password',
                    placeholder: 'Your password',
                    controller: passwordController,
                    secureText: true,
                  ),
                  ButtonText(
                    buttonText: 'Sign Up',
                    onPressed: () {
                      Navigator.pushNamed(context, '/bonus-page');
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 50, bottom: 73),
                    child: Text(
                      'Terms & Conditions',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTitle extends StatelessWidget {
  const MyTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Text(
        'Join us and get\nyour next journey',
        style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
      ),
    );
  }
}
