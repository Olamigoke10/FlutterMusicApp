import 'package:client/core/theme/app_pallete.dart';
import 'package:client/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:client/features/auth/view/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up.',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30,),
            const CustomField(
              hintText: "Name",
            ),
            const SizedBox(height: 15,),
            const CustomField(
              hintText: "Email",
            ),
            const SizedBox(height: 15,),
            const CustomField(
              hintText: "Password",
            ),
            const SizedBox(height: 20,),
            const AuthGradientButton(),
            const SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                text: 'Already have an account? ',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: "Sign In",
                    style: TextStyle(
                      color: Pallete.gradient2,
                      fontWeight: FontWeight.bold
                    )
                  )
                ]
            ))
          ],
        ),
      ),
    );
  }
}
