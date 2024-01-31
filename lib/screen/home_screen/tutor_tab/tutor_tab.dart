import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import '../../../model/tutor_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/reusable_text_form.dart';

class TutorTab extends StatefulWidget {
  const TutorTab({super.key});

  @override
  State<TutorTab> createState() => _TutorTabState();
}

class _TutorTabState extends State<TutorTab> {

  final List<TutorModel> dataList=[
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 8),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 10),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 50),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 30),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 22),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 10),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 5),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 40),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 11),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 8),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 90),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 20),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 22),
    TutorModel(tutorImage:'assets/image/user/image.png' ,name: 'John Doe',email: 'johndoe2211@gmail.com',country: 'America',phoneNumber:33757005467 ,users: 33),
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
                          'Tutors',
                          style: AppTextStyles.boldStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 24),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width*0.30,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:AppColors.primaryWhite,

                              prefixIcon:   const Icon(Icons.search,color: AppColors.hintColor,),
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
                                  'User',
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
                          DataCell(Text( dataList[index].users.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 12
                              )

                          )
                          ),
                          DataCell(

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

                          ),


                        ])),
                      ),

                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Text( 'Add Tutor',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.semiBoldStyle
                              .copyWith(
                              color: AppColors.hintColor,
                              fontSize: 24
                          ),

                        ),
                      ),
                      const SizedBox(height: 10,),

                   Center(

                        child: CircleAvatar(
                          radius:40,
                         backgroundColor: Color(0xffF4F1FF),
                         child:SvgPicture.asset("assets/image/tutor/Vector.svg")
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Center(
                        child: Text( 'Upload photo, videoo',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color: AppColors.hintColor,
                              fontSize: 10
                          ),

                        ),
                      ),
                      const SizedBox(height: 20,),
                      Text( 'Tutor Name',
                        style: AppTextStyles.regularStyle
                            .copyWith(
                            color: AppColors.primaryBlack,
                            fontSize: 16
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const ReusableTextForm(
                        hintText: "Alexa Mircho",
                      ),
                      const SizedBox(height: 15,),
                      Text( 'Phone Number',
                        style: AppTextStyles.regularStyle
                            .copyWith(
                            color: AppColors.primaryBlack,
                            fontSize: 16
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const ReusableTextForm(
                        hintText: "03123456789",
                      ),
                      const SizedBox(height: 15,),


                      Text( 'Email',
                        style: AppTextStyles.regularStyle
                            .copyWith(
                            color: AppColors.primaryBlack,
                            fontSize: 16
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const ReusableTextForm(
                        hintText: "sample@gmail.com",
                      ),
                      const SizedBox(height: 15,),

                      Text( 'Country',
                        style: AppTextStyles.regularStyle
                            .copyWith(
                            color: AppColors.primaryBlack,
                            fontSize: 16
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const ReusableTextForm(
                        hintText: "America",
                      ),
                      const SizedBox(height: 15,),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.primaryColor,
                        ),
                         child: Center(
                           child:     Text( 'Add',
                             style: AppTextStyles.regularStyle
                                 .copyWith(
                                 color: AppColors.primaryWhite,
                                 fontSize: 16
                             ),
                           ),
                         ),
                      )




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



