import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import '../../../model/user_data_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class UserTab extends StatefulWidget {
  const UserTab({super.key});

  @override
  State<UserTab> createState() => _UserTabState();
}

class _UserTabState extends State<UserTab> {

  final List<UserModel> dataList=[
   UserModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   UserModel(tutorImage:'assets/image/user/img& bg.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   UserModel(tutorImage:'assets/image/user/img & bg.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   UserModel(tutorImage:'assets/image/user/img & bg (1).png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   UserModel(tutorImage:'assets/image/user/img & bg (2).png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   UserModel(tutorImage:'assets/image/user/img & bg (3).png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   UserModel(tutorImage:'assets/image/user/img & bg (4).png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   UserModel(tutorImage:'assets/image/user/img & bg (5).png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   UserModel(tutorImage:'assets/image/user/img & bg (6).png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   UserModel(tutorImage:'assets/image/user/img & bg (7).png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   UserModel(tutorImage:'assets/image/user/img & bg (8).png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,tutorName: 'Jessica'),
   ];


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
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
                        Text(
                          'User',
                          style: AppTextStyles.boldStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 24),
                        ),
                   SizedBox(  width: MediaQuery.sizeOf(context).width*0.12,),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width*0.30,
                          child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor:AppColors.primaryWhite,

                                prefixIcon:   Icon(Icons.search,color: AppColors.hintColor,),
                                hintText:'Search',
                                hintStyle: AppTextStyles.regularStyle.copyWith(color: AppColors.hintColor,fontSize: 10),
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
                                  borderSide: const BorderSide(color: Colors.red, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                       const Image(
                           width: 25,
                           height: 25,
                           fit: BoxFit.cover,
                           image: AssetImage(
                           "assets/image/user/excel-svgrepo-com 1.png")),
                        const SizedBox(width: 10,),
                        Text(
                          'Export to Excel',
                          style: AppTextStyles.semiBoldStyle
                              .copyWith(
                              color:
                              AppColors.greenColor,
                              fontSize: 14),
                        ),

                      ],
                      ),


                      const SizedBox(height: 10,),
                      DataTable(
                        columnSpacing: 24,
                        border: const TableBorder(
                            verticalInside: BorderSide.none,
                            horizontalInside: BorderSide.none
                        ),
                        columns: [
                          DataColumn(
                            label:
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Name',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.hintColor,fontSize: 12),
                                ),
                                const SizedBox(width: 5,),
                                const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Email',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.hintColor,fontSize: 12),
                                ),
                                const SizedBox(width: 5,),
                                const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Country',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.hintColor,fontSize: 12),
                                ),
                                const SizedBox(width: 5,),
                                const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Phone Number',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.hintColor,fontSize: 12),
                                ),
                                const SizedBox(width: 5,),
                                const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Tutor Name',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.hintColor,fontSize: 12),
                                ),
                                const SizedBox(width: 5,),
                                const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              '',
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor,fontSize: 12),
                            ),
                          ),

                        ],
                        rows:
                        List.generate(

                            dataList.length, (index) =>   DataRow(cells: [
                          DataCell(
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(backgroundImage: AssetImage(dataList[index].tutorImage.toString()),),
                                const SizedBox(width: 10,),
                                Text(

                                    dataList[index].name.toString(),

                                  style: AppTextStyles.regularStyle
                                      .copyWith(
                                      color: AppColors.primaryBlack
                                          .withOpacity(0.70)),
                                )
                              ],
                            ),
                          ),
                          DataCell(Text( dataList[index].email.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 12

                              )
                          )),
                          DataCell(Text( dataList[index].country.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 12
                              )

                          )),
                          DataCell(Text( dataList[index].phoneNumber.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 12

                              )

                          )),
                          DataCell(Text( dataList[index].tutorName.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 12
                              )

                          )
                          ),
                          DataCell(

                             StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) { return  PopupMenuButton<String>(
                               icon: Icon(Icons.more_horiz),
                               itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                 PopupMenuItem<String>(
                                   value: 'edit',
                                   child: ListTile(
                                     leading: SvgPicture.asset('assets/image/user/Edit.svg'),
                                     title: Text('Edit'),
                                   ),
                                 ),
                                 PopupMenuItem<String>(
                                   value: 'delete',
                                   child: ListTile(
                                     leading: SvgPicture.asset('assets/image/user/Delete.svg'),
                                     title: Text('Delete'),
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

                          ),


                        ])),
                      ),

                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Center(

                        child: CircleAvatar(
                          radius:40,
                          backgroundImage: AssetImage("assets/image/user/bac.png"),
                        ),
                      ),
                      SizedBox(height: 20,),
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
                      SizedBox(height: 20,),
                      Text( 'Contact Info',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.semiBoldStyle
                            .copyWith(
                            color: AppColors.primaryBlack,
                            fontSize: 18
                        ),
                      ),
                      SizedBox(height: 20,),
                      ...List.generate(3, (index) =>     Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(userData[index].icon.toString()),
                              SizedBox(width: 15,),
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
                          SizedBox(height: 20,),
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

class UserInfo {
  String?icon;
  String?name;
  UserInfo({this.icon, this.name,});
}



