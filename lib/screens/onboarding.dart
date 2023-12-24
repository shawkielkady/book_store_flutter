import 'package:bedo/consts/app_assets.dart';
import 'package:bedo/consts/app_colors.dart';
import 'package:bedo/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoaringScreen extends StatelessWidget {
  const OnBoaringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.login);
          },
          child: const Icon(
            Icons.skip_next_outlined,
            color: AppColors.greyColor,
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 0.02.sh, horizontal: 0.04.sw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.login);
                      },
                      child: Text(
                        'skip',
                        style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 0.08.sh,
            ),
            Column(
              children: [
                Container(
                  width: .9.sw,
                  child: Image.asset(AppAssets.onboarding),
                ),
                SizedBox(
                  height: 0.01.sh,
                ),
                Text(
                  'Reading Offline',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30.sp,
                      color: AppColors.secondaryColor),
                ),
                SizedBox(
                  height: 0.01.sh,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.07.sw),
                  child: Text(
                    'Reading anytime anywhere, save your time and data',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: AppColors.greyColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
