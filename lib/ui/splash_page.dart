import 'package:flutter/material.dart';
import 'package:tracking_app/storage_helper/storage_manager.dart';
import 'package:tracking_app/extra.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 7),(){
      if(StorageManager.getValue()){
        Get.offNamed(Extras.trackingRoute);
      } else {
        Get.offNamed(Extras.introRoute);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset("assets/images/splash.png",width: 350,height: 350,fit: BoxFit.cover,
          filterQuality: FilterQuality.high,color: Colors.white,),
        ),
      ),
    );
  }
}
