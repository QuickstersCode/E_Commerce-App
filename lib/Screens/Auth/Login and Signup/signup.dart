import 'package:e_commerce_app/Controller/Auth%20Controller/auth_controller.dart';
import 'package:e_commerce_app/Routes/app_routes.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_textfield.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/main_button.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.put(AuthController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              6.h.height,

              CustomText(
                text: 'Create an account',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),

              CustomText(
                text: 'Let’s create your account.',
                color: AppColors.gray1,
              ),
              2.h.height,

              CustomTextField(
                titles: 'Full Name',
                controller: controller.fullName,
                hintText: "Enter your full name",
              ),
              1.h.height,

              CustomTextField(
                titles: 'Email',
                controller: controller.signupEmail,
                hintText: "Enter your email address",
              ),
              1.h.height,

              Obx(
                () => CustomTextField(
                  obscur: controller.passwordShow.value,
                  titles: 'Password',
                  controller: controller.signupPassword,
                  hintText: "Enter your password",
                  lasticon: GestureDetector(
                    onTap: () {
                      controller.passwordShow.value == true
                          ? controller.passwordShow.value = false
                          : controller.passwordShow.value = true;
                    },
                    child: Icon(
                      controller.passwordShow.value == false
                          ? Icons.remove_red_eye
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              2.h.height,

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  children: [
                    const TextSpan(text: "By signing up you agree to our "),
                    TextSpan(
                      text: "Terms",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),

                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(text: ", "),
                    TextSpan(
                      text: "Privacy",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),

                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "Cookie Use",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),

                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
              2.h.height,
              MainCustomButton(
                title: "Create an Account",
                backColour: AppColors.gray1,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.bottomNavBar);
                },
              ),
              2.h.height,
              Row(
                children: [
                  Expanded(
                    child: Container(height: 0.2.h, color: AppColors.gray3),
                  ),
                  1.w.width,
                  CustomText(text: "or", color: AppColors.gray1, fontSize: 18),
                  1.w.width,
                  Expanded(
                    child: Container(height: 0.2.h, color: AppColors.gray3),
                  ),
                ],
              ),
              2.h.height,
              MainCustomButton(
                title: "Sign Up with Google",
                image: AppImages.google,
                onTap: () {},
                borderColor: AppColors.gray2,
              ),
              2.h.height,
              MainCustomButton(
                title: "Sign Up with Facebook",
                backColour: AppColors.blue,
                image: AppImages.facebook,
                onTap: () {},
              ),
              2.h.height,
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.login);
              },
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  children: [
                    const TextSpan(text: "Already have an account? "),
                    TextSpan(
                      text: " Log In",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, AppRoutes.login);
                            },
                    ),
                  ],
                ),
              ),
            ),
          ),
          3.h.height,
        ],
      ),
    );
  }
}
