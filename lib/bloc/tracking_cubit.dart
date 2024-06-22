
import 'package:tracking_app/bloc/tracking_states.dart';
import 'package:bloc/bloc.dart';
import 'package:tracking_app/db/shipment.dart';
import 'package:tracking_app/models/TrackingModel.dart';

import '../auth_service/api_service.dart';

class TrackingCubit extends Cubit<TrackingStates> {
  ApiService apiService;
  TrackingCubit({required this.apiService}) : super(Initial());

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
  getAllShipments() async {
    emit(Loading());
    try {
      List<TrackingData?> data = await apiService.getShipments();
      if(data.isNotEmpty){
        emit(ShipmentState(data));
      } else {
        emit(Error("Could not find shipment info"));
      }
    } catch(e){
      emit(Error("Could not find shipment info"));
    }
  }
  saveShipment(TrackingCompanion trackingData) async {
     var result = await apiService.saveShipment(trackingData);
     emit(SaveShipmentState(result));
  }
  deleteTrackingHistory() async {
     int result = await apiService.deleteAllShipments();
     emit(DeleteTrackingHistory(result));
  }
  deletePackage(int packageID) async {
     int result = await apiService.deleteShipment(packageID);
     emit(DeletePackageState(result));
  }

}
