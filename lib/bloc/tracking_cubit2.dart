
import 'package:tracking_app/bloc/tracking_states.dart';
import 'package:bloc/bloc.dart';
import 'package:tracking_app/db/shipment.dart';
import 'package:tracking_app/models/TrackingModel.dart';

import '../auth_service/api_service.dart';

class TrackingCubit2 extends Cubit<TrackingStates> {
  ApiService apiService;
  TrackingCubit2({required this.apiService}) : super(Initial());

  getShipment(String trackingCode) async {
     emit(Loading());
     try {
       TrackingModel? data = await apiService.getShipmentInfo(trackingCode);
       if(data?.data != null){
         emit(Success(data));
       } else {
         emit(Error("Could not find this shipment info"));
       }
     } catch(e){
       emit(Error("Could not find this shipment info"));
     }
  }


}
