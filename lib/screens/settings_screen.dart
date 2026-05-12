import 'package:flutter/material.dart';

import '../components/login_button.dart';
import '../session.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          width: 640,
          child: Column(
            spacing: 16,
            children: [
              Session.hasBearer
                  ? SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Confirm your action'),
                              content: const Text('Are you sure you want to logout?'),
                              actions: [
                                OutlinedButton(
                                  child: const Text('Cancel'),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                                FilledButton(child: const Text('Confirm'), onPressed: () {}),
                              ],
                            ),
                          );
                        },
                        icon: const Icon(Icons.logout_rounded),
                        label: const Text('Logout'),
                      ),
                    )
                  : LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}
