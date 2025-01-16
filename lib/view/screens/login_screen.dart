import 'package:flutter/material.dart';
import '../../themes/constants.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/easy_login_row_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Stack(
          children: [
            // white background
            Positioned(
              left: 10,
              right: 10,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
              ),
            ),

            // primary color background
            Positioned(
              top: 100,
              left: 10,
              right: 10,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                ),
              ),
            ),

            // second white background
            Positioned(
              top: 190,
              left: 10,
              right: 10,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
            // logo & brand name
            Positioned(
              top: 40,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 60),
                      Text('  Erena_DecoArt',
                          style: AppTextStyles.headline1
                              .copyWith(color: AppColors.background)),
                    ],
                  ),
                  Image.asset(
                    'images/logo.png', // Replace with your logo's path
                    height: 120, // Adjust size as needed
                  ),
                ],
              ),
            ),

            // form
            Positioned(
                top: 250, // Adjust to position it within the SafeArea
                left: 50,
                right: 15,
                child: BuildForm())
          ],
        ),
      ),
    );
  }
}

class BuildForm extends StatelessWidget {
  const BuildForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // headline
        const Text(
          'Login',
          style: AppTextStyles.headline1,
        ),
        const SizedBox(height: AppSpacing.large * 2),
        // email field
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            prefixIcon: const Icon(Icons.email),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        const SizedBox(height: AppSpacing.large),
        // password field
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: const Icon(Icons.lock),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        // forget password & create new acc
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Forgot password?',
                  style: AppTextStyles.smallBodyText),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Create an account',
                  style: AppTextStyles.smallBodyText),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.large),
        //log in button
        WelcomeButton(
          text: 'Log in',
          onPressed: () {},
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        SizedBox(height: AppSpacing.large),
        // easy login
        EasyLoginRow(
          onGooglePressed: () {
            // Handle Google login
          },
          onFacebookPressed: () {
            // Handle Facebook login
          },
          onInstagramPressed: () {},
          onTwitterPressed: () {
            // Handle Twitter login
          },
        ),
      ],
    );
  }
}
