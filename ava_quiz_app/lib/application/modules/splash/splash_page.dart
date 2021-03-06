// ignore_for_file: prefer_const_constructors

import 'package:ava_quiz_app/application/modules/splash/splash_controller.dart';
import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:ava_quiz_app/layout/app_gradients.dart';
import 'package:ava_quiz_app/layout/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then(
      (value) => WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            gradient: AppGradients.linear,
          ),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 400,
                child: Image.asset(AppImages.logo),
              )
            ],
          ),
        ),
      ),
    );
  }
}
