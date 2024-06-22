import 'package:another_stepper/another_stepper.dart';
import 'package:another_stepper/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back,color: Colors.white,size: 30,),
                    ),
                    const SizedBox(width: 10,),
                    Text(Get.arguments['trackingNumber'],style: Extras.getBoldFont().copyWith(fontSize: 25),)
                  ],
                ),
              ),
              BlocBuilder<TrackingCubit2,TrackingStates>(
                builder: (context,state){
                  if(state is Loading){
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.2,
                      child: const Center(child: CircularProgressIndicator(),),
                    );
                  }
                  else if(state is Success){
                    var data = state.trackingModel?.data?.trackings![0].events;
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
                  }
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.2,
                    child: const Center(child: CircularProgressIndicator(),),
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
