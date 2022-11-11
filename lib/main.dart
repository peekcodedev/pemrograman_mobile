import 'package:flutter/material.dart';
import 'package:sclicingsuccess/ui/pages/home_page.dart';
import 'package:sclicingsuccess/ui/pages/onboarding_page.dart';
import 'package:sclicingsuccess/ui/pages/pin_page.dart';
import 'package:sclicingsuccess/ui/pages/profile_edit_page.dart';
import 'package:sclicingsuccess/ui/pages/profile_edit_pin.dart';
import 'package:sclicingsuccess/ui/pages/profile_edit_success.dart';
import 'package:sclicingsuccess/ui/pages/profile_page.dart';
import 'package:sclicingsuccess/ui/pages/sign_in_page.dart';
import 'package:sclicingsuccess/ui/pages/sign_up_page.dart';
import 'package:sclicingsuccess/ui/pages/sign_up_set_ktp_page.dart';
import 'package:sclicingsuccess/ui/pages/sign_up_set_profile_page.dart';
import 'package:sclicingsuccess/ui/pages/sign_up_success_page.dart';
import 'package:sclicingsuccess/ui/pages/splash_page.dart';
import 'package:sclicingsuccess/ui/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfile(),
        '/sign-up-set-ktp': (context) => const SignUpSetKtpPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin': (context) => const PinPage(),
        '/profile-edit': (context) => const ProfileEditPage(),
        '/profile-edit-pin': (context) => const ProfilEditPinPage(),
        '/profile-edit-success': (context) => const ProfileEditSuccessPage(), 
      },
    );
  }
}
