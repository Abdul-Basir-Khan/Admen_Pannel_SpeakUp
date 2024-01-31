import 'package:admin_panel/themes/app_colors.dart';
import 'package:admin_panel/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class ReusableTextForm extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Color filledColor;
  final String? hintText;
  final bool? obscureText;
  final bool? enabled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextCapitalization? capitalize;
  final int? maxLine;
  final Color? textColor;


  const ReusableTextForm({
    Key? key,
    this.validator,
    this.controller,
    this.keyboardType,
    this.textColor=AppColors.primaryBlack,
    this.capitalize=TextCapitalization.none,
    this.hintText,
    this.suffixIcon,
    this.maxLine=1,
    this.obscureText = false,
    this.enabled = true,
    this.prefixIcon,  this.filledColor = AppColors.primaryWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        textCapitalization: capitalize!,
        maxLines: maxLine!,

        style: TextStyle(color: textColor!),
        decoration: InputDecoration(
            filled: true,
            fillColor: filledColor,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabled: enabled!,
            hintText: hintText,

            hintStyle:AppTextStyles.regularStyle.copyWith(fontSize: 14,color: AppColors.hintColor),

            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  color: AppColors.redColor
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            )
        ),
        // validations
        validator: validator);
  }
}
