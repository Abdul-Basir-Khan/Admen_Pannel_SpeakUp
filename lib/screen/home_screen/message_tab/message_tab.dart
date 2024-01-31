import 'package:admin_panel/screen/home_screen/message_tab/tabs/persnoal_tab.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class MessageTab extends StatefulWidget {
  const MessageTab({super.key});

  @override
  State<MessageTab> createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  final List<String> tabText = [
    'All',
    'Personal',
    'Group',
  ];
  final List pages = [
    const SizedBox(),
    const PersonalTab(),
    const SizedBox(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Message',
                          style: AppTextStyles.boldStyle.copyWith(
                              color: AppColors.hintColor, fontSize: 16),
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 15,
                          child: Icon(
                            Icons.add,
                            color: AppColors.primaryWhite,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.primaryWhite,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: AppColors.hintColor,
                        ),
                        hintText: 'Search',
                        hintStyle: AppTextStyles.regularStyle
                            .copyWith(color: AppColors.hintColor, fontSize: 10),
                        contentPadding: const EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            tabText.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.06,
                                child: Center(
                                  child: Text(
                                    tabText[index].toString(),
                                    style: AppTextStyles.mediumStyle.copyWith(
                                      color: _currentIndex == index
                                          ? AppColors.primaryColor
                                          : AppColors.hintColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 2,
                          child: Row(
                            children: List.generate(
                                tabText.length,
                                (index) => Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.06,
                                      color: _currentIndex == index
                                          ? AppColors.primaryColor
                                          : Colors.transparent,
                                    )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    pages[_currentIndex]
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.55,
                  height: MediaQuery.sizeOf(context).height * 0.95,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/image/user/image.png"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'John Carlio',
                                style: AppTextStyles.regularStyle.copyWith(
                                    color: AppColors.primaryBlack,
                                    fontSize: 16),
                              ),
                              Text(
                                'Online',
                                style: AppTextStyles.regularStyle.copyWith(
                                    color: AppColors.hintColor, fontSize: 12),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.call,
                            color: AppColors.hintColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            Icons.videocam_rounded,
                            color: AppColors.hintColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: AppColors.hintColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.15,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                            color: AppColors.primaryColor),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Lorem Ipsum is simply ',
                                style: AppTextStyles.regularStyle
                                    .copyWith(color: AppColors.primaryWhite),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                            color: AppColors.primaryColor),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                style: AppTextStyles.regularStyle
                                    .copyWith(color: AppColors.primaryWhite),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/image/user/image.png"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 140,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.hintColor),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 140,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.hintColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                            color: AppColors.primaryColor),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                style: AppTextStyles.regularStyle
                                    .copyWith(color: AppColors.primaryWhite),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/image/user/image.png"),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                  height: 48,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(
                                            left: 10, top: 10),
                                        hintText: 'Say Something....',
                                        hintStyle: const TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey),
                                        prefixIcon: GestureDetector(
                                            child: const Icon(
                                                Icons.attach_file_outlined,
                                                color: Colors.grey)),
                                        suffixIcon: GestureDetector(
                                            child: const Icon(
                                                Icons.emoji_emotions_outlined,
                                                color: Colors.grey)),
                                        border: InputBorder.none),
                                  )),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                  'assets/image/tutor/send.svg',
                                  color: AppColors.primaryColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
