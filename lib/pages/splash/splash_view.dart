import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../routes/app_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    checkLogin();
    super.initState();
  }

  checkLogin()async{
      await Hive.openBox('app');
      var box = Hive.box('app');
      var time = box.get('login');

      if (time != null) {

        int loginTimeMillis = time as int;
        DateTime loginTime = DateTime.fromMillisecondsSinceEpoch(loginTimeMillis);
        DateTime now = DateTime.now();
        DateTime fiveDaysAgo = now.subtract(const Duration(days: 5));
        
        if (!loginTime.isBefore(fiveDaysAgo)) {
          Navigator.pushNamedAndRemoveUntil(context, Routes.details, (route) => false);
        }else{
          Navigator.pushNamedAndRemoveUntil(context, Routes.login, (route) => false);
        }
      }else{
         Navigator.pushNamedAndRemoveUntil(context, Routes.login, (route) => false);
      }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}