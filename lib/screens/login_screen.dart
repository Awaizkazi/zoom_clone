import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start a Meeting',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Start or join a meeting on the go',
            style: TextStyle(fontSize: 22),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 38.0),
            child: Image.asset('assets/images/onboarding.jpg'),
          ),
          CustomButton(
            text: 'Sign In By Google',
            //! Sign in ke baad Direct home Screen pe jana chahiye
            onPressed: () async {
              final GoogleSignInAccount? googleUser =
                  await GoogleSignIn().signIn();
            },
            // onPressed: (() {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => const HomeScreen()),
            //   );
            // }),
          ),
        ],
      ),
    );
  }
}
