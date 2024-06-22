import 'package:country_flags/country_flags.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart' hide Value;
import 'package:get/get_core/src/get_main.dart';

import 'package:tracking_app/bloc/tracking_cubit.dart';
import 'package:tracking_app/bloc/tracking_states.dart';
import 'package:tracking_app/db/shipment.dart';
import '../extra.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({super.key});

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _packageNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<TrackingCubit>(context).getAllShipments();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TrackingCubit,TrackingStates>(
        listener: (context,state){
          if(state is Success){
             var data = TrackingCompanion(
                 trackingCode: Value(_searchController.text.toString().toUpperCase()),
                 packageName: Value(_packageNameController.text.toString()),
                 origin: Value(state.trackingModel?.data!.trackings![0].shipment!.originCountryCode!),
                 destination: Value(state.trackingModel?.data!.trackings![0].shipment!.destinationCountryCode),
                 statusMileStone: Value(state.trackingModel?.data!.trackings![0].shipment!.statusMilestone)
             );
            BlocProvider.of<TrackingCubit>(context).saveShipment(data);
          }
          else if (state is SaveShipmentState){
            var result = state.result;
            if(result > 1){
              BlocProvider.of<TrackingCubit>(context).getAllShipments();
            } else {
              print("Failed to get data");
            }
          }
          else if (state is DeleteTrackingHistory){
            int result = state.result;
            if(result >= 1){
              Fluttertoast.showToast(msg: "Tracking History Delete Successfully");
              BlocProvider.of<TrackingCubit>(context).getAllShipments();
            } else {
              Fluttertoast.showToast(msg: "Could not delete Tracking History");
              BlocProvider.of<TrackingCubit>(context).getAllShipments();
            }
          }
          else if (state is DeletePackageState){
             int result = state.result;
             if(result == 1){
               Fluttertoast.showToast(msg: 'Package Successfully Erased');
             } else {
               Fluttertoast.showToast(msg: "Failed To Erase Item");
             }
          }
        },
    child: SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.8,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(26),bottomRight: Radius.circular(26)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/cover.png"),
                        fit: BoxFit.cover
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ready!",style: Extras.getMediumFont().copyWith(fontSize: 20, color: Colors.black)),
                      const SizedBox(height: 5,),
                      Text("Track Your\n shipments",style: Extras.getBoldFont().copyWith(fontSize: 30,
                          color: Colors.black),),
                      const SizedBox(height: 5,),
                      TextField(
                        controller: _searchController,
                        style: Extras.getMediumFont().copyWith(fontSize: 18,color: Colors.black),
                        textCapitalization: TextCapitalization.characters,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            fillColor: Colors.white,
                            hintText: 'Tracking Code',
                            hintStyle: Extras.getMediumFont().copyWith(fontSize: 18,color: Colors.black),
                            suffixIcon: const Icon(Icons.local_shipping,color: Colors.black54,size: 25)
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: _packageNameController,
                        style: Extras.getMediumFont().copyWith(fontSize: 18,color: Colors.black),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            fillColor: Colors.white,
                            hintText: 'Package Name',
                            hintStyle: Extras.getMediumFont().copyWith(fontSize: 18,color: Colors.black),
                            suffixIcon: const Icon(Icons.info_outline,color: Colors.black54,size: 25)
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Center(
                        child: GestureDetector(
                          onTap: (){
                            String trackingCode = _searchController.text.toString();
                            if(trackingCode.isEmpty){
                              Fluttertoast.showToast(msg: "Tracking Code cannot be empty");
                              return;
                            }
                            BlocProvider.of<TrackingCubit>(context).getShipment(trackingCode.toUpperCase());
                          },
                          child: Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Extras.hexToColor("#22212e")
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Track Now',style: Extras.getBoldFont().copyWith(fontSize: 17,
                                    color: Colors.white),),
                                const SizedBox(width: 10,),
                                const Icon(Icons.arrow_right_alt_rounded,size: 20,color: Colors.white,)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 40,bottom: 30),
                child: Row(
                  children: [
                    Expanded(child: Text("Tracking History",style: Extras.getBoldFont().copyWith(fontSize: 20,
                        color: Colors.white),)),
                    GestureDetector(
                      onTap: (){
                          showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Erase History",style: Extras.getMediumFont(),),
                                  content: Text("Do you want to delete tracking history?",
                                  style: Extras.getMediumFont(),),
                                  actions: [
                                    ElevatedButton(onPressed: () {
                                       BlocProvider.of<TrackingCubit>(context).deleteTrackingHistory();
                                       Navigator.pop(context);
                                    }, child: Text("Erase",style: Extras.getBoldFont(),)),
                                    ElevatedButton(onPressed: (){
                                      Navigator.pop(context);
                                    }, child: Text("Cancel",style: Extras.getBoldFont(),))
                                  ],
                                );
                              });
                      },
                      child: const Icon(Icons.delete_outline_sharp),
                    )
                  ],
                ),
              ),
              BlocBuilder<TrackingCubit,TrackingStates>(
                  builder: (context,state){
                    if(state is Loading){
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        child: const Center(
                          child: CircularProgressIndicator(color: Colors.white,),
                        ),
                      );
                    }
                    else if (state is Error){
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Center(
                          child: Image.asset("assets/images/shipping.png",width: 60,height: 60,color: Colors.white,),
                        ),
                      );
                    }
                    else if (state is ShipmentState){
                      List<TrackingData?> data = state.data;
                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context,index){
                            return GestureDetector(
                              onTap: (){
                                Get.toNamed(Extras.detailsRoute,arguments: {
                                  "trackingNumber" : data[index]?.trackingCode
                                });
                              },
                              child: Dismissible(
                                key: UniqueKey(),
                                direction: DismissDirection.startToEnd,
                                onDismissed: (direction){
                                   BlocProvider.of<TrackingCubit>(context).deletePackage(data[index]!.id);
                                }, child: Card(
                                margin: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(data[index]!.packageName!,style: Extras.getMediumFont().copyWith(fontSize: 20),),
                                            const SizedBox(height: 5,),
                                            Text(data[index]!.trackingCode!,style: Extras.getMediumFont().copyWith(fontSize: 20),),
                                            const SizedBox(height: 5,),
                                            Row(
                                              children: [
                                                Text("Status : ",style: Extras.getMediumFont().copyWith(fontSize: 20),),
                                                Text(data[index]!.statusMileStone!,style: Extras.getMediumFont().copyWith(fontSize: 20,
                                                    color: Colors.green),)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          getCountryFlag(data[index]!.origin!),
                                          const SizedBox(width: 5,),
                                          const Icon(Icons.double_arrow),
                                          const SizedBox(width: 5,),
                                          getCountryFlag(data[index]!.destination!),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ),
                            );
                          },
                        ),
                      );
                    }
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      child: Center(
                        child: Image.asset("assets/images/shipping.png",width: 60,height: 60,color: Colors.white,),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    ),);
  }

  CountryFlag getCountryFlag(String countryCode){
    return CountryFlag.fromCountryCode(
      countryCode,
      width: 25,
      height: 25,
      shape: const Circle(),
    );
  }
}

