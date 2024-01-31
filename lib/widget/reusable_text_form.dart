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
    this.prefixIcon,  this.filledColor = AppColors.textFiledColor,
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

            hintStyle:AppTextStyles.mediumStyle.copyWith(fontSize: 18,color: AppColors.primaryBlack),

            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.primaryColor
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  color: AppColors.primaryColor
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  color: AppColors.primaryRed
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  color: AppColors.primaryColor
              ),
            )
        ),
        // validations
        validator: validator);
  }
}
