import 'package:flutter/material.dart';
import '../../themes/constants.dart';

class WelcomeButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const WelcomeButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            padding: const EdgeInsets.symmetric(
                vertical: AppSpacing.medium, horizontal: AppSpacing.large)),
        child: Text(
          text,
          style: AppTextStyles.bodyText.copyWith(
            color: AppColors.buttonTextColor,
          ),
        ),
      ),
    );
  }
}
