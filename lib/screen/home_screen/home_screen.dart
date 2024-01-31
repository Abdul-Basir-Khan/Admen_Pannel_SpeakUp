import 'package:admin_panel/screen/home_screen/earning_tab/earning_tab.dart';
import 'package:admin_panel/screen/home_screen/report_and_statistics/report_and_statistics.dart';
import 'package:admin_panel/screen/home_screen/review_tab/review_tab.dart';
import 'package:admin_panel/screen/home_screen/setting_tab.dart';
import 'package:admin_panel/screen/home_screen/subscription_tab/subscription_tab.dart';
import 'package:admin_panel/screen/home_screen/tutor_tab/tutor_tab.dart';
import 'package:admin_panel/screen/home_screen/user_tab/user_tab.dart';
import 'package:admin_panel/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../themes/app_colors.dart';
import 'dashboard_screen/dashboard_screen.dart';
import 'message_tab/message_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List iconList = [
    'assets/image/home/Category.png',
    'assets/image/home/Chart.png',
    'assets/image/home/Frame.png',
    'assets/image/home/Frame (1).png',
    'assets/image/home/grammar-class-teacher-teaching-pointing-whiteboard-text-lines-svgrepo-com 1.png',
    'assets/image/home/Ticket.png',
    'assets/image/home/Document.png',
    'assets/image/home/Activity.png',
    'assets/image/home/Setting.png',
  ];
  final List tabList = [
    'Dashboard',
    'Subscription',
    'Earning',
    'User',
    'Tutors',
    'Reviews',
    'Reports & Statistics',
    'Messages',
    'Settings',
  ];

  final List socialAccount=[
    'Facebook',
    'Tik Tok',
    'You Tube',
    'Instagram',
    'X',
    'Linkedin',
    'WhatsApp',
    'Email',
  ];
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.18,
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                          image:
                              AssetImage('assets/image/home/Ellipse 61.png')),
                      const SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                        itemCount: iconList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            onTap: () {
                              setState(() {
                                _currentIndex = index;
                                _isVisible=false;
                              });
                            },
                            leading:Image(
                                color: _currentIndex == index
                                    ? AppColors.primaryColor
                                    : AppColors.primaryBlack,
                              image: AssetImage( iconList[index].toString()),),
                            title: Text(
                              tabList[index].toString(),
                              style: AppTextStyles.mediumStyle.copyWith(
                                color: _currentIndex == index
                                    ? AppColors.primaryColor
                                    : AppColors.hintColor,
                              ),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        onTap: () {
                          setState(() {
                            _currentIndex = 9;
                            _isVisible = !_isVisible;
                          });
                        },
                        leading:Image(
                          color: _currentIndex == 9
                              ? AppColors.primaryColor
                              : AppColors.primaryBlack,
                          image: const AssetImage(
                            'assets/image/home/Notification.png'),),
                        title: Text(
                          'Connection',
                          style: AppTextStyles.mediumStyle.copyWith(
                            color: _currentIndex == 9
                                ? AppColors.primaryColor
                                : AppColors.hintColor,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _isVisible,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:List.generate(socialAccount.length , (index) =>    ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 65,vertical: 0),
                            title: Text(
                             socialAccount[index].toString(),
                              style: AppTextStyles.mediumStyle.copyWith(
                                color: AppColors.hintColor,
                              ),
                            ),
                          ))
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.78,
                child: _currentIndex == 0? const DashBoardScreen():
                _currentIndex == 1?const SubscriptionTab():
                _currentIndex == 2?const EarningTab():
                _currentIndex == 3?const UserTab():
                _currentIndex == 4?const TutorTab():
                _currentIndex == 5?const ReviewTab():
                _currentIndex == 6?const ReportAndStatisticsTab():
                _currentIndex == 7?const MessageTab():
                _currentIndex == 8?const SettingTab()
                    : Container(),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
