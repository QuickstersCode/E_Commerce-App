import 'package:e_commerce_app/Screens/Auth/Login%20and%20Signup/login.dart';
import 'package:e_commerce_app/Screens/Auth/Reset_Password/forgot_Password.dart';
import 'package:e_commerce_app/Screens/Auth/Reset_Password/reset_password.dart';
import 'package:e_commerce_app/Screens/Auth/Reset_Password/verification_code.dart';
import 'package:e_commerce_app/Screens/Auth/Login%20and%20Signup/signup.dart';
import 'package:e_commerce_app/Screens/Auth/OnBording/on_boarding.dart';
import 'package:e_commerce_app/Screens/Auth/OnBording/splash_screen.dart';
import 'package:e_commerce_app/Screens/Home/Widgets/botom_nav_bar.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashScreen = '/SplashScreen';
  static const String onbordingScreen = '/OnBoardingScreen';
  static const String signup = '/SignUp';
  static const String login = '/Login';
  static const String forgotPassword = '/ForgotPassword';
  static const String verificationCode = '/VerificationCode';
  static const String resetPassword = '/ResetPassword';
  static const String bottomNavBar = '/BottomNavBar';
  // static const String splashScreen = '/SplashScreen';
  // static const String onbordingScreen = '/OnBoardingScreen';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';
  // static const String splashScreen = '/SplashScreen';
  // static const String onbordingScreen = '/OnBoardingScreen';
  // static const String signup = '/SignUp';
  // static const String login = '/Login';

  static Map<String, WidgetBuilder> get routes => {
    splashScreen: (_) => SplashScreen(),
    onbordingScreen: (_) => OnBoardingScreen(),
    signup: (_) => SignUp(),
    login: (_) => Login(),
    forgotPassword: (_) => ForgotPassword(),
    verificationCode: (_) => VerificationCode(),
    resetPassword: (_) => ResetPassword(),
    bottomNavBar: (_) => BottomNavBar(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
    // onbordingScreen: (_) => OnBoardingScreen(),
  };
}
