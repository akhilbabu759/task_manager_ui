import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';

class HomeController extends GetxController{
  @override
  void onInit() {
    // startProgressAnimation();
    super.onInit();
  }
   
  double progressValue = 0.0;
 int navIndex=0;
 navbarChang(value){
  navIndex=value;
  update();
 }

  // void startProgressAnimation() {
  //   const duration = Duration(seconds: 1); // Duration for the animation
  //   const steps = 1; // Number of steps in the animation
  //   final stepDuration = duration ~/ steps;
    

  //   Timer.periodic(stepDuration, (Timer timer) {
  //     log(timer.tick.toString(),name: 'jo');
  //     // if(timer.tick==)
  //       progressValue += .2 ;
  //       update();
  //       if (progressValue >= 0.7) {
  //         timer.cancel();
  //         log('messagelll');
          
  //       }
  //       log(progressValue.toString(),name: 'jom');
  //       // progressValue += .11 ;
  //       update();
     
  //   });
  //   update();
  // }
}