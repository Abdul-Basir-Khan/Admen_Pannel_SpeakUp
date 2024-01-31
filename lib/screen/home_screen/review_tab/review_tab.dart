import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../user_tab/user_tab.dart';

class ReviewTab extends StatefulWidget {
  const ReviewTab({super.key});

  @override
  State<ReviewTab> createState() => _ReviewTabState();
}

class _ReviewTabState extends State<ReviewTab> {

  final List<UserInfo> userData=[
    UserInfo(icon: 'assets/image/user/Message.svg',name: 'kajope5182@ummoh.com'),
    UserInfo(icon: 'assets/image/user/Call.svg',name: '33757005467'),
    UserInfo(icon: 'assets/image/user/Location.svg',name: 'America'),
    UserInfo(icon: 'assets/image/user/teacher-at-the-blackboard-svgrepo-com 1.svg',name: 'Jessica'),
  ];

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.58,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
                        Text(
                          'Reviews',
                          style: AppTextStyles.boldStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 24),
                        ),
const Spacer(),

                        Text(
                          'Latest',
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 10),
                        ),
                        const SizedBox(width: 10,),
                        const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
                      ],
                      ),
                      const SizedBox(height: 10,),
                   ...List.generate(10, (index) =>    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           const CircleAvatar(
                             radius: 30,
                             backgroundImage: AssetImage("assets/image/auth/Image & bg.png"),
                           ),
                           const SizedBox(width: 10,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text(
                                     'John Deo',
                                     style: AppTextStyles.semiBoldStyle
                                         .copyWith(
                                         color:
                                         AppColors.hintColor,
                                         fontSize: 14),
                                   ),
                                   const SizedBox(width: 10,),
                                   const Icon(Icons.star,color: AppColors.yellowLight,),
                                   const Icon(Icons.star,color: AppColors.yellowLight,),
                                   const Icon(Icons.star,color: AppColors.yellowLight,),
                                   const Icon(Icons.star,color: AppColors.yellowLight,),
SizedBox(width: MediaQuery.sizeOf(context).width*0.36,),
                                   StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) { return  PopupMenuButton<String>(
                                     icon: const Icon(Icons.more_horiz),
                                     itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                       PopupMenuItem<String>(
                                         value: 'edit',
                                         child: ListTile(
                                           leading: SvgPicture.asset('assets/image/user/Edit.svg'),
                                           title: const Text('Edit'),
                                         ),
                                       ),
                                       PopupMenuItem<String>(
                                         value: 'delete',
                                         child: ListTile(
                                           leading: SvgPicture.asset('assets/image/user/Delete.svg'),
                                           title: const Text('Delete'),
                                         ),
                                       ),
                                     ],
                                     onSelected: (String value) {
                                       if (value == 'edit') {
                                         // Handle edit action
                                       } else if (value == 'delete') {
                                         // Handle delete action
                                       }
                                     },
                                   ); },)
                                 ],
                               ),
                               Text(
                                 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s\nstandard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\na type specimen book.',
                                 style: AppTextStyles.regularStyle
                                     .copyWith(
                                     color:
                                     const Color(0xff484848),
                                     fontSize: 12),
                               ),
                             ],
                           ),
                         ],
                       ),
                       const SizedBox(height: 10,),
                     ],
                   ))

                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      const Center(

                        child: CircleAvatar(
                          radius:40,
                          backgroundImage: AssetImage("assets/image/user/bac.png"),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Center(
                        child: Text( 'John Deo',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.semiBoldStyle
                              .copyWith(
                              color: AppColors.hintColor,
                              fontSize: 22
                          ),

                        ),
                      ),
                      const SizedBox(height: 20,),
                      Text( 'Contact Info',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.semiBoldStyle
                            .copyWith(
                            color: AppColors.primaryBlack,
                            fontSize: 18
                        ),
                      ),
                      const SizedBox(height: 20,),
                      ...List.generate(3, (index) =>     Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(userData[index].icon.toString()),
                              const SizedBox(width: 15,),
                              Text( userData[index].name.toString(),
                                textAlign: TextAlign.center,
                                style: AppTextStyles.regularStyle
                                    .copyWith(
                                    color: AppColors.hintColor,
                                    fontSize: 16
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(height: 20,),
                        ],
                      ),),



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




