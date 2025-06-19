import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: List.generate(
          5,
              (index) => Card(
            child: ListTile(
              leading: const Icon(Icons.notification_important),
              title: Text('Notification #$index'),
              subtitle: const Text('This is the detail of the notification.'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 14),
            ),
          ),
        ),
      ),
    );
  }
}
