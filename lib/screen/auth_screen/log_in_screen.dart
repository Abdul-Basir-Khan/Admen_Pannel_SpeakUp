import 'package:admin_panel/screen/home_screen/home_screen.dart';
import 'package:admin_panel/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../widget/reusable_text_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  final _form = GlobalKey<FormState>();

  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryGray.withOpacity(0.70),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width*0.50,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color:  AppColors.primaryGray,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.primaryGray)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _form,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Center(
                            child: SizedBox(
                              height: 150,
                              width: 150,

                              child: Image.asset(
                                "assets/image/auth/Image.png",
                                color:AppColors.primaryColor,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),

                       Text("Email",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16,
                         color: AppColors.primaryColor,),
                     ),
                          const SizedBox(
                            height: 5,
                          ),
                          ReusableTextForm(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            hintText: "Email",
                            validator: (value){
                              if(value ==null || value.isEmpty){
                                return 'This field is required';
                              }else if(!value.contains('@')&& !value.contains('.com')){
                                return 'Invalid email';
                              }else{
                                return null;
                              }
                            },

                          ),
                          const SizedBox(
                            height: 20,
                          ),
                       Text( "Password",style: AppTextStyles.regularStyle.copyWith(  fontSize: 16,
                           color: AppColors.primaryColor,),),
                          const SizedBox(
                            height: 5,
                          ),
                          ReusableTextForm(
                            hintText: "Password",
                            obscureText: pass,
                            suffixIcon: InkWell(
                              onTap: (){
                                setState(() {
                                  pass = !pass;
                                });
                              },
                              child: Icon(
                                pass ?Icons.visibility_off: Icons.visibility ,
                                color: AppColors.primaryBlack,
                              ),
                            ),
                            controller: passwordController,

                            validator: (value){
                              if(value ==null || value.isEmpty){
                                return 'Password is required';
                              }else{
                                return null;
                              }
                            },
                          ),

                const SizedBox(height: 25,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
                            },
                            child: Center(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width*0.50,
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 13),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(08),
                                  color: AppColors.primaryColor,

                                ),
                                child: Center(child: Text('Sign In',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite,fontSize: 18),)),
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                         Text(  "Don't have an account?",style: AppTextStyles.semiBoldStyle.copyWith(     fontSize: 16,
                           color: AppColors.primaryColor,
                         ),
                       ),
                              TextButton(onPressed: (){


                              }, child:
                             Text(
                               "Sign Up",
                           style: AppTextStyles.semiBoldStyle.copyWith(    fontSize: 16,
                             color: AppColors.primaryColor,

                           ),
                             ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
