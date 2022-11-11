import 'package:flutter/material.dart';
import 'package:sclicingsuccess/ui/shared/theme.dart';
import 'package:sclicingsuccess/ui/widget/buttons.dart';

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update!',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Your data is safe\n our system',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              widht: 183,
              title: 'My Profile',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/home',
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
