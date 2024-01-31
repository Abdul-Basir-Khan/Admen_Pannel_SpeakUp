
import 'package:admin_panel/screen/auth_screen/log_in_screen.dart';
import 'package:admin_panel/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../themes/app_colors.dart';
import '../../widget/reusable_text_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();

  final _form = GlobalKey<FormState>();

  bool pass = true;
  bool passOne = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryWhite,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Row(
            crossAxisAlignment:
            CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [

            SizedBox(
              width: MediaQuery.sizeOf(context).width*0.30,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [

                  const Center(child: Image(image: AssetImage("assets/image/auth/Logo.png"))),
                  const SizedBox(height: 10,),
                  Center(
                    child: Text("Sign Up",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16,
                      color: AppColors.primaryBlack,),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text("Select One",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16,
                    color: AppColors.primaryBlack,),),
                  const SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Admin",style: AppTextStyles.regularStyle.copyWith( fontSize: 14,
                        color: AppColors.hintColor,),),
                      const Spacer(),
                      const Icon(Icons.arrow_drop_down,color: AppColors.primaryBlack,)
                    ],
                  ),
                  const SizedBox(height: 10,),

                  Form(
                    key: _form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email Address",style: AppTextStyles.semiBoldStyle.copyWith( fontSize: 16, color: AppColors.hintColor,),),
                        const SizedBox(
                          height: 5,
                        ),
                        ReusableTextForm(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          hintText: "example@gmail.com",
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
                          height: 10,
                        ),
                        Text( "Password",style: AppTextStyles.regularStyle.copyWith(  fontSize: 16,
                          color: AppColors.hintColor,),),
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
                        const SizedBox(height: 10,),
                        Text( "Confirm Password",style: AppTextStyles.regularStyle.copyWith(  fontSize: 16,
                          color: AppColors.hintColor,),),
                        const SizedBox(
                          height: 5,
                        ),
                        ReusableTextForm(
                          hintText: "Confirm Password",
                          obscureText: passOne,
                          suffixIcon: InkWell(
                            onTap: (){
                              setState(() {
                                passOne = !passOne;
                              });
                            },
                            child: Icon(
                              passOne ?Icons.visibility_off: Icons.visibility ,
                              color: AppColors.primaryBlack,
                            ),
                          ),
                          controller: confirmPasswordController,

                          validator: (value){
                            if(value ==null || value.isEmpty){
                              return 'Password  field is required';
                            }else{
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 15,),

                        GestureDetector(
                          onTap: (){
                            if(_form.currentState!.validate()){
                              //Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
                            }


                          },
                          child: Center(
                            child:

                            Container(
                              width: MediaQuery.sizeOf(context).width*0.50,
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 13),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(08),
                                color: AppColors.primaryColor,

                              ),
                              child: Center(child: Text('Sign Up',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite,fontSize: 18),)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text('Already Have Account?',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryColor,fontSize: 18),),
                            Text('Sign In',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryColor,fontSize: 18),),

                          ],),
                        )

                      ],
                    ),
                  ),

                ],
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              child: Image(
                  height: MediaQuery.sizeOf(context).height*0.70,
                  image: const AssetImage("assets/image/auth/PNG.png")),
            ),
            const SizedBox(width: 30,),


          ],
          ),
        ),
      ),
    );
  }
}
