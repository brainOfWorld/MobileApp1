import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String name;

  const NotificationCard({super.key, required this.name});

  void _showSnackBar(BuildContext context) {
    final messenger = ScaffoldMessenger.of(context);
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        content: Text("Hello, $name! Welcome to the Student Info Manager."),
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: "DISMISS",
          onPressed: () => messenger.hideCurrentSnackBar(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Interactive Notification",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(
              "Tap the button below to see a welcome message.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton.icon(
                onPressed: () => _showSnackBar(context),
                icon: const Icon(Icons.notifications),
                label: const Text("Show Alert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
