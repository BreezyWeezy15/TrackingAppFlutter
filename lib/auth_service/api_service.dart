
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tracking_app/main.dart';
import 'package:tracking_app/extra.dart';
import '../db/shipment.dart';
import '../models/TrackingModel.dart';

class ApiService {

  Future<TrackingModel?> getShipmentInfo(String trackingCode) async {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
      logPrint: (object) => print(object),
    ));
    Options options = Options(headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${Extras.apiKey}',
        'Content-Type': 'application/json; charset=utf-8',
      },);
    final data = {"trackingNumber": trackingCode};
    var response = await dio.post(Extras.baseUrl, data: data, options: options,);
    if (response.statusCode == 201) {
      dynamic responseData = response.data;
      return TrackingModel.fromJson(responseData);
    } else {
      return null;
    }
  }
  /// DATABASE
  Future<List<TrackingData>> getShipments() async {
    return await shipmentDatabase.getShipments();
  }
  Future<int> saveShipment(TrackingCompanion companion) async {
    return await shipmentDatabase.saveShipment(companion);
  }
  Future<int> deleteShipment(int id) async {
    return await shipmentDatabase.deleteShipment(id);
  }
  Future<int> deleteAllShipments() async {
    return await shipmentDatabase.deleteAllShipments();
  }
  Future<int> updateShipment(TrackingCompanion companion) async {
    return await shipmentDatabase.updateShipment(companion);
  }
}
