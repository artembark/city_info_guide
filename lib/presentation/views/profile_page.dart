import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль пользователя'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse('https://yandex.ru/legal/maps_termsofuse/'),
                );
              },
              child: const Text('Условия использования Яндекс.Карт'),
            )
          ],
        ),
      ),
    );
  }
}
