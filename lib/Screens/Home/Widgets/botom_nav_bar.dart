import 'package:e_commerce_app/Screens/Home/Account/account_page.dart';
import 'package:e_commerce_app/Screens/Home/Search%20Page/search.dart';
import 'package:e_commerce_app/Screens/Home/home_page.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    SearchPage(),
    Center(child: Text('Saved Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Cart Page', style: TextStyle(fontSize: 24))),
    AccountPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: pages[selectedIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(height: 1, thickness: 1, color: AppColors.gray1),
          Container(
            color: AppColors.backgroundColor,
            height: 9.h,
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildNavItem(AppImages.home, 'Home', 0),
                buildNavItem(AppImages.search, 'Search', 1),
                buildNavItem(AppImages.heart, 'Saved', 2),
                buildNavItem(AppImages.cart, 'Cart', 3),
                buildNavItem(AppImages.account, 'Account', 4),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(String icon, String title, int index) {
    final bool isSelected = selectedIndex == index;
    final Color iconColor = isSelected ? Colors.black : AppColors.gray1;

    return GestureDetector(
      onTap: () => onTabTapped(index),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, color: iconColor, height: 24, width: 24),
            CustomText(
              text: title,
              color: iconColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
