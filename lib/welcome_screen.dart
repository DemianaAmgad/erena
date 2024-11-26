import 'package:flutter/material.dart';
import 'constants.dart';

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
              Expanded(
                flex: 2,
                child: Image.asset(
                  'images/welcome.png',
                  //fit: BoxFit.cover,
                ),
              ),
              Text(
                'Erena Deco Art',
                style:
                    AppTextStyles.headline1.copyWith(color: AppColors.primary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.small),
              const Text(
                'Your personal wedding planning assistant',
                style: AppTextStyles.bodyText,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(
                        vertical: AppSpacing.medium,
                        horizontal: AppSpacing.large)),
                child: Text(
                  'Get Started',
                  style: AppTextStyles.bodyText.copyWith(
                    color: AppColors.buttonTextColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
