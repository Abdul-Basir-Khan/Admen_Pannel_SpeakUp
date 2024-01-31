import 'package:admin_panel/screen/home_screen/dashboard_screen/dashboard_screen.dart';
import 'package:admin_panel/screen/home_screen/payment_screen/payment_screen.dart';
import 'package:admin_panel/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.17,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
            color: AppColors.primaryGray,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.dashboard,
                        color: AppColors.primaryBlack.withOpacity(0.60),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Dashboard',
                        style: AppTextStyles.mediumStyle.copyWith(
                            color: AppColors.primaryBlack.withOpacity(0.60)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: AppColors.primaryBlack.withOpacity(0.60),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'User',
                        style: AppTextStyles.mediumStyle.copyWith(
                            color: AppColors.primaryBlack.withOpacity(0.60)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.payments_outlined,
                        color: AppColors.primaryBlack.withOpacity(0.60),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Payment',
                        style: AppTextStyles.mediumStyle.copyWith(
                            color: AppColors.primaryBlack.withOpacity(0.60)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.83,
            child: _currentIndex == 0
                ? const DashBoardScreen()
                : _currentIndex == 1
                    ? Container()
                    : _currentIndex == 2
                        ? const PaymentScreen()
                        : Container(),
          )
        ],
      ),
    ));
  }
}
