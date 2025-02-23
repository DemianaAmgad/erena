import 'package:flutter/material.dart';
import '../../themes/constants.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/easy_login_row_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadeBackground,
      body: SafeArea(
          child: Stack(
        children: [
          // primary background
          Positioned(
            left: 10,
            right: 10,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
            ),
          ),
          // white background
          Positioned(
            top: 70,
            left: 10,
            right: 10,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
            ),
          ),
          // form
          Positioned(
            top: 100,
            left: 50,
            right: 15,
            child: SignUpForm(),
          )
        ],
      )),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //headline
        const Text(
          'Sign Up',
          style: AppTextStyles.headline1,
        ),
        const SizedBox(height: AppSpacing.large * 2),
        //first name field
        TextFormField(
          decoration: InputDecoration(
            labelText: 'First Name',
            hintText: 'Enter your first name',
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: AppSpacing.large),
        // last name field
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Last Name',
            hintText: 'Enter your last name',
            prefixIcon: Icon(Icons.person_outline),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: AppSpacing.large),
        //email field
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Enter your email',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: AppSpacing.large),

        //password field
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ),
        const SizedBox(height: AppSpacing.large),

        // conifrm password field
        //  TextFormField(
        //       decoration: InputDecoration(
        //         labelText: 'Confirm Password',
        //         hintText: 'Re-enter your password',
        //         prefixIcon: Icon(Icons.lock_outline),
        //         border: OutlineInputBorder(),
        //         suffixIcon: IconButton(
        //           icon: Icon(
        //             _confirmPasswordVisible
        //                 ? Icons.visibility
        //                 : Icons.visibility_off,
        //           ),
        //           onPressed: () {
        //             setState(() {
        //               _confirmPasswordVisible = !_confirmPasswordVisible;
        //             });
        //           },
        //         ),
        //       ),
        //       obscureText: !_confirmPasswordVisible, // Toggles visibility
        //     ),
        
        // sign up button
        WelcomeButton(
          text: 'Sign Up',
          onPressed: () {},
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        SizedBox(height: AppSpacing.large),
        // easy log in row
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
