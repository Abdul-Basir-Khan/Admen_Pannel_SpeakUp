import 'package:admin_panel/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../themes/app_colors.dart';
import '../../widget/reusable_text_form.dart';
import '../home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _form = GlobalKey<FormState>();

  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryWhite,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Center(
                        child: Image(
                            image: AssetImage("assets/image/auth/Logo.png"))),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "Log In",
                        style: AppTextStyles.semiBoldStyle.copyWith(
                          fontSize: 16,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Select One",
                      style: AppTextStyles.semiBoldStyle.copyWith(
                        fontSize: 16,
                        color: AppColors.primaryBlack,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Admin",
                          style: AppTextStyles.regularStyle.copyWith(
                            fontSize: 14,
                            color: AppColors.hintColor,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.primaryBlack,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Form(
                      key: _form,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email Address",
                            style: AppTextStyles.semiBoldStyle.copyWith(
                              fontSize: 16,
                              color: AppColors.hintColor,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ReusableTextForm(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            hintText: "example@gmail.com",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              } else if (!value.contains('@') &&
                                  !value.contains('.com')) {
                                return 'Invalid email';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Password",
                            style: AppTextStyles.regularStyle.copyWith(
                              fontSize: 16,
                              color: AppColors.hintColor,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ReusableTextForm(
                            hintText: "Password",
                            obscureText: pass,
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  pass = !pass;
                                });
                              },
                              child: Icon(
                                pass ? Icons.visibility_off : Icons.visibility,
                                color: AppColors.primaryBlack,
                              ),
                            ),
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password is required';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Remember me",
                                style: AppTextStyles.regularStyle.copyWith(
                                  fontSize: 14,
                                  color: AppColors.hintColor,
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Reset Password?",
                                  style: AppTextStyles.regularStyle.copyWith(
                                    fontSize: 14,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_form.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()));
                              }
                            },
                            child: Center(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.50,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 13),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(08),
                                  color: AppColors.primaryColor,
                                ),
                                child: Center(
                                    child: Text(
                                  'Log In',
                                  style: AppTextStyles.semiBoldStyle.copyWith(
                                      color: AppColors.primaryWhite,
                                      fontSize: 18),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                child: Image(
                    height: MediaQuery.sizeOf(context).height * 0.70,
                    image: const AssetImage("assets/image/auth/PNG.png")),
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
