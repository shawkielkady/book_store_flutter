import 'package:bedo/consts/app_assets.dart';
import 'package:bedo/routing/routes.dart';
import 'package:bedo/widgets/form_button.dart';
import 'package:bedo/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.05.sh),
            child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 0.3.sh,
                      width: 0.6.sw,
                      child: Image.asset(AppAssets.onboarding),
                    ),
                  ),
                  SizedBox(
                    height: 0.03.sh,
                  ),
                  Form(
                      key: formKey,
                      child: Column(
                        children: [
                         const CustomTextFormField(hint: 'User Name'),
                          SizedBox(
                            height: 0.02.sh,
                          ),
                        const  CustomTextFormField(hint: 'Password',isObscureText: true,),
                        SizedBox(height: 0.04.sh,),
                       const FormButton(),
                       Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(child:const Text('Forget Password?',style: TextStyle(decoration:TextDecoration.underline ),),onPressed: (){
                          Navigator.of(context).pushNamed(Routes.bookList);
                        },),
                       )
                        ],
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
