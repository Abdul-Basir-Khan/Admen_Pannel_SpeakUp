import 'dart:ui';


import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../../widget/reusable_text_form.dart';


class DialogForChanges extends StatelessWidget {

  const DialogForChanges({Key? key, }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return

      Center(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width*0.45,
          height: MediaQuery.sizeOf(context).height*0.70,
          child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Dialog(
            backgroundColor: AppColors.primaryWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
               Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.close,color: AppColors.hintColor,))
                    ],
                  ),
              Center(
                child: Text(
                  'Settings',
                  style: AppTextStyles.boldStyle
                      .copyWith(
                      color:
                      AppColors.hintColor,
                      fontSize: 24),
                ),
              ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text("New Password",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16, color: AppColors.hintColor,),),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextForm(
                    hintText: "New Password",
                    validator: (value){
                      if(value ==null || value.isEmpty){
                        return 'This field is required';
                      }
                      else{
                        return null;
                      }
                    },
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  Text("Confirm Password",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16, color: AppColors.hintColor,),),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableTextForm(
                    hintText: "Confirm Password",
                    validator: (value){
                      if(value ==null || value.isEmpty){
                        return 'This field is required';
                      }
                      else{
                        return null;
                      }
                    },
                  ),

                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(

                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 9),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(08),
                        color: AppColors.primaryColor,

                      ),
                      child: Center(child: Text('Save',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite,fontSize: 18),)),
                    ),
                  ),



                ],
              ),
            ),
          ),
              ),
        ),
      );
  }
}