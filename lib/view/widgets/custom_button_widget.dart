import 'package:flutter/material.dart';
import '../../themes/constants.dart';

class WelcomeButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final BorderRadius? borderRadius;

  const WelcomeButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.medium, horizontal: AppSpacing.large),
          shape: RoundedRectangleBorder(
            borderRadius:
                borderRadius ?? BorderRadius.circular(20), // Default radius
          ),
        ),
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
