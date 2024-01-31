import 'package:admin_panel/screen/home_screen/dialog/dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../widget/reusable_text_form.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {


 final List permissionList=[
   'Change Subscription Plan',
   'Change User\'s Subscription Plan',
   'Delete User\'s Account',
   'Change User\'s Details',
   'Change Operator Password',
   'Change Admin Password',
   'Change GPT Prompt',
 ];

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Operator Settings',
                style: AppTextStyles.boldStyle
                    .copyWith(
                    color:
                    AppColors.hintColor,
                    fontSize: 24),
              ),
              const SizedBox(height: 20,),
              Row(
                 crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child:

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Text("Full Name",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16, color: AppColors.hintColor,),),
                      const SizedBox(
                        height: 10,
                      ),
                      ReusableTextForm(
                        hintText: "Your Name",
                        validator: (value){
                          if(value ==null || value.isEmpty){
                            return 'This field is required';
                          }
                          else{
                            return null;
                          }
                        },

                      ),
                    ],
                    ),
                  ),
                  const SizedBox(width: 40,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Text("Email Address",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16, color: AppColors.hintColor,),),
                      const SizedBox(
                        height: 10,
                      ),
                      ReusableTextForm(
                        hintText: "example@gmail.com",
                        validator: (value){
                          if(value ==null || value.isEmpty){
                            return 'This field is required';
                          }
                          else{
                            return null;
                          }
                        },

                      ),
                    ],
                    ),
                  ),
                  const SizedBox(width: 40,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Text("Password",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16, color: AppColors.hintColor,),),
                      const SizedBox(
                        height: 10,
                      ),
                      ReusableTextForm(
                        hintText: "Password",
                        validator: (value){
                          if(value ==null || value.isEmpty){
                            return 'This field is required';
                          }
                          else{
                            return null;
                          }
                        },

                      ),
                    ],
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 20,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,children: [
                GestureDetector(onTap: (){
                  showDialog(context: context, builder: (BuildContext context) { return const DialogForChanges();}, );
                },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width*0.15,
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 9),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(08),
                      border: Border.all(color:AppColors.primaryColor,)

                    ),
                    child: Center(child: Text('Change Password',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryColor,fontSize: 18),)),
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  width: MediaQuery.sizeOf(context).width*0.10,
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(08),
                    color: AppColors.primaryColor,

                  ),
                  child: Center(child: Text('Save',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite,fontSize: 18),)),
                ),
              ],),
              const SizedBox(height: 40,),

              Text(
                'Permission',
                style: AppTextStyles.boldStyle
                    .copyWith(
                    color:
                    AppColors.hintColor,
                    fontSize: 24),
              ),
              const SizedBox(height: 20,),


              GridView.builder(
                itemCount: permissionList.length,shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio:10.1,
                    crossAxisCount: 3), itemBuilder: (BuildContext context, int index) {
                return
                 StatefulBuilder(

                   builder: (BuildContext context, void Function(void Function()) setState) { return  Row(
                   crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
                   Checkbox(
                     activeColor: AppColors.primaryColor,
                     value: timeDilation != 1.0,
                     onChanged: (value) {
                       setState(() {
                         timeDilation = value! ?2.0 : 1.0;
                       }
                       );
                     },
                   ),
                   const SizedBox(width: 15,),

                   Text(
                     permissionList[index].toString(),
                     style: AppTextStyles.regularStyle
                         .copyWith(
                         color:
                         AppColors.hintColor,
                         fontSize: 14),
                   ),


                 ],
                 ); },);
              },)





            ],
          ),
        ),
      );
  }
}




