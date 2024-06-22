import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tracking_app/auth_service/api_service.dart';
import 'package:tracking_app/bloc/tracking_cubit.dart';
import 'package:tracking_app/db/shipment.dart';
import 'package:tracking_app/ui/splash_page.dart';
import 'package:tracking_app/extra.dart';

import 'bloc/tracking_cubit2.dart';

MyDatabase shipmentDatabase = MyDatabase();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TrackingCubit(apiService: ApiService())),
        BlocProvider(create: (_) => TrackingCubit2(apiService: ApiService()))
      ],
      child: GetMaterialApp(
        home: const MyApp(),
        themeMode: ThemeMode.dark,
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        getPages: Extras.routes,
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashPage();
  }
}
