import 'package:another_stepper/another_stepper.dart';
import 'package:another_stepper/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tracking_app/bloc/tracking_cubit.dart';
import 'package:tracking_app/bloc/tracking_states.dart';
import 'package:tracking_app/extra.dart';

import '../bloc/tracking_cubit2.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<TrackingCubit2>(context).getShipment(Get.arguments["trackingNumber"]);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: const BoxDecoration(
                  color: Colors.black54
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: const Icon(Icons.arrow_back,color: Colors.white,size: 30,),
                      ),
                      const SizedBox(width: 10,),
                      Text(Get.arguments['trackingNumber'],style: Extras.getBoldFont().copyWith(fontSize: 25),),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Extras.getCountryFlag("CA"),
                          const SizedBox(width: 5,),
                          const Icon(Icons.double_arrow),
                          const SizedBox(width: 5,),
                          Extras.getCountryFlag("DZ"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              BlocBuilder<TrackingCubit2,TrackingStates>(
                builder: (context,state){
                  if(state is Loading){
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.2,
                      child: const Center(
                        child: SpinKitFadingFour(size: 40,color: Colors.white,),
                      ),
                    );
                  }
                  else if(state is Error){
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.2,
                      child:  Center(child: Text("No Data Found", style:
                      Extras.getBoldFont().copyWith(fontSize: 35))),
                    );
                  }
                  else if(state is Success){
                    var data = state.trackingModel?.data?.trackings![0].events;
                    if(data!.isNotEmpty){
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: AnotherStepper(
                            stepperList: List.generate(data!.length, (index){
                              return StepperData(
                                  title: StepperText(data[index].status!,
                                      textStyle: Extras.getBoldFont().copyWith(fontSize: 17)),
                                  subtitle: data[index].location == null ?
                                  StepperText("${data[index].sourceCode!}\n${formatDate( data[index].occurrenceDatetime!)}",
                                      textStyle: Extras.getMediumFont().copyWith(fontSize: 14)) :
                                  StepperText("${data[index].sourceCode!}\n${data[index].location!}",
                                      textStyle: Extras.getMediumFont().copyWith(fontSize: 14)),
                                  iconWidget: Image.asset("assets/images/package.png",width: 30,height: 35,
                                    color: Colors.white,)
                              );
                            }),
                            stepperDirection: Axis.vertical),
                      );
                    } else {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.2,
                        child:  Center(child: Text("No Data Found", style: Extras.getBoldFont().copyWith(fontSize: 35)),),
                      );
                    }
                  }
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.2,
                    child:  Center(child: Text("No Data Found", style: Extras.getBoldFont().copyWith(fontSize: 35)),),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
  String formatDate(String date){
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat("yyyy-MM-dd hh:mm").format(dateTime);
    return formattedDate;
  }
}
