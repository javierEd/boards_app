import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () async {},
      icon: const Icon(Icons.login_rounded),
      label: const Text('Login/Register'),
    );
  }
}
