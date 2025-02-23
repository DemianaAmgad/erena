import 'package:erena/view/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import '../../themes/constants.dart';
import '../widgets/custom_button_widget.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // remove const later
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.large),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: AppSpacing.small),
              Image.asset(
                'images/welcome.png',
                height: 200,
                fit: BoxFit.cover,
              ),
              Text(
                'Erena Deco Art',
                style:
                    AppTextStyles.headline1.copyWith(color: AppColors.primary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.medium),
              const Text(
                'Your personal wedding planning assistant',
                style: AppTextStyles.bodyText,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.large),
              WelcomeButton(
                text: 'Log in',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
              const SizedBox(height: AppSpacing.small),
              WelcomeButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
                  );
                },
              ),
              const SizedBox(height: AppSpacing.large),
            ],
          ),
        ),
      ),
    );
  }
}
