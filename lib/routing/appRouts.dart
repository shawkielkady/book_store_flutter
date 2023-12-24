import 'package:bedo/routing/routes.dart';
import 'package:bedo/screens/book_list.dart';
import 'package:bedo/screens/login.dart';
import 'package:bedo/screens/onboarding.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoarding :
        return MaterialPageRoute(builder: (_)=>const OnBoaringScreen());
      case Routes.login :
        return MaterialPageRoute(builder: (_)=>const Login());  
       case Routes.bookList :
        return MaterialPageRoute(builder: (_)=> BookList());    
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text(settings.name.toString()),
                  ),
                ));  
    }
  }
}