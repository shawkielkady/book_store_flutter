import 'package:bedo/consts/app_colors.dart';
import 'package:bedo/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(Routes.bookList);
      },
      style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll(AppColors.primaryColor),
          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          minimumSize:
               MaterialStatePropertyAll(Size(double.infinity, 0.07.sh))),
      child:const Text(
       'Login'
        ),
      );
  }
}