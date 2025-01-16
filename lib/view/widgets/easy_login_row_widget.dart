import 'package:flutter/material.dart';
import '../../themes/constants.dart';

class EasyLoginRow extends StatelessWidget {
  final VoidCallback onGooglePressed;
  final VoidCallback onFacebookPressed;
  final VoidCallback onTwitterPressed;
  final VoidCallback onInstagramPressed;

  const EasyLoginRow({
    super.key,
    required this.onGooglePressed,
    required this.onFacebookPressed,
    required this.onTwitterPressed,
    required this.onInstagramPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Or continue with',
          style: AppTextStyles.bodyText,
        ),
        const SizedBox(height: AppSpacing.medium),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onFacebookPressed,
              child: Image.asset(
                'assets/icons/facebook_icon.png',
                height: 40,
                width: 40,
              ),
            ),
            const SizedBox(width: AppSpacing.medium),
            GestureDetector(
              onTap: onGooglePressed,
              child: Image.asset(
                'assets/icons/google_icon.png',
                height: 40,
                width: 40,
              ),
            ),
            const SizedBox(width: AppSpacing.medium),
            GestureDetector(
              onTap: onInstagramPressed,
              child: Image.asset(
                'assets/icons/instagram_icon.jpg',
                height: 40,
                width: 40,
              ),
            ),
            const SizedBox(width: AppSpacing.medium),
            GestureDetector(
              onTap: onTwitterPressed,
              child: Image.asset(
                'assets/icons/twitter_icon.png',
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
