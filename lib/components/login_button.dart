import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () {
          context.goNamed(routeNameRegister);
        },
        icon: const Icon(Icons.person_add_rounded),
        label: const Text('Register'),
      ),
    );
  }
}
