

import 'package:tracking_app/models/TrackingModel.dart';

import '../db/shipment.dart';

abstract class TrackingStates {}
class Initial extends TrackingStates {}
class Loading extends TrackingStates {}
class Error extends TrackingStates {
  String error;
  Error(this.error);
}
class Success extends TrackingStates {
  TrackingModel? trackingModel;
  Success(this.trackingModel);
}
class ShipmentState extends TrackingStates {
  List<TrackingData?> data;
  ShipmentState(this.data);
}
class SaveShipmentState extends TrackingStates {
   int result;
   SaveShipmentState(this.result);
}
class DeleteTrackingHistory extends TrackingStates {
   int result;
   DeleteTrackingHistory(this.result);
}
class DeletePackageState extends TrackingStates {
  int result;
  DeletePackageState(this.result);
}
