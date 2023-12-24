import 'package:bedo/consts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
    final bool? isObscureText;
    final String hint;
  const CustomTextFormField({required this.hint,this.isObscureText,super.key});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 0.48.dg),
          borderRadius: BorderRadius.circular(16),
        ) ,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyColor, width: 0.48.dg),
          borderRadius: BorderRadius.circular(16),
        ),
        filled: true,
        fillColor: AppColors.textFieldbg,
        
        
      ),
    );
  }
}