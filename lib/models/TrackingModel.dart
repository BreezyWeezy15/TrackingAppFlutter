/// data : {"trackings":[{"shipment":{"shipmentId":"f4f888d7-d140-423f-9a48-e0689d27e098","statusCode":"delivery_delivered","statusCategory":"delivery","statusMilestone":"delivered","originCountryCode":"US","destinationCountryCode":"CN","delivery":{"estimatedDeliveryDate":null,"service":null,"signedBy":null},"trackingNumbers":[{"tn":"S24DEMO456393"},{"tn":"S24DEMO169411"}],"recipient":{"name":null,"address":null,"postCode":"94901","city":null,"subdivision":null}},"events":[{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0f46","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Delivered to the addressee","occurrenceDatetime":"2021-03-04T17:12:57","order":null,"location":"SAN RAFAEL, CA 94901","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":"delivery_delivered","statusCategory":"delivery","statusMilestone":"delivered"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a00ja","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Out for Delivery","occurrenceDatetime":"2021-03-04T10:12:57","order":null,"location":"SAN RAFAEL, CA 94901","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":"delivery_out_for_delivery","statusCategory":"delivery","statusMilestone":"out_for_delivery"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0765","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Arrived at Hub, Your item arrived at the hub.","occurrenceDatetime":"2021-03-04T06:12:57","order":null,"location":"SAN RAFAEL, CA 94901","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0f67","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Processed Through Regional Facility","occurrenceDatetime":"2021-03-03T17:12:57","order":null,"location":"LOS ANGELES CA INTERNATIONAL DISTRIBUTION CENTER","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0f24","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Arrived at Regional Facility","occurrenceDatetime":"2021-03-03T15:38:57","order":null,"location":"LOS ANGELES CA INTERNATIONAL DISTRIBUTION CENTER","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"5adff7f7-c370-4026-9ff5-2ff4156ff2ff","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Flight Departure","occurrenceDatetime":"2021-03-02T23:24:50","order":null,"location":"Beijing airport","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"918c20dc-9a9b-4588-bf62-ded9761d9621","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Dispatched from Office of Exchange","occurrenceDatetime":"2021-03-02T22:23:41","order":null,"location":"Beijing","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"b8dabe5f-1022-41c5-ad3a-8c8e4aacc965","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Depature from Local Sorting Center","occurrenceDatetime":"2021-03-02T19:24:57","order":null,"location":"Beijing","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"ee8ebe96-4eae-4a91-9a99-6f3afa6a0f45","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Package Received","occurrenceDatetime":"2021-03-02T15:38:57","order":null,"location":"Beijing","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":"transit","statusMilestone":"in_transit"}],"statistics":{"timestamps":{"infoReceivedDatetime":"2021-03-02T15:38:57","inTransitDatetime":"2021-03-02T15:38:57","outForDeliveryDatetime":"2021-03-04T10:12:57","failedAttemptDatetime":null,"availableForPickupDatetime":null,"exceptionDatetime":null,"deliveredDatetime":"2021-03-04T17:12:57"}}}]}

class TrackingModel {
  TrackingModel({
      Data? data,}){
    _data = data;
}

  TrackingModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data? _data;
TrackingModel copyWith({  Data? data,
}) => TrackingModel(  data: data ?? _data,
);
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// trackings : [{"shipment":{"shipmentId":"f4f888d7-d140-423f-9a48-e0689d27e098","statusCode":"delivery_delivered","statusCategory":"delivery","statusMilestone":"delivered","originCountryCode":"US","destinationCountryCode":"CN","delivery":{"estimatedDeliveryDate":null,"service":null,"signedBy":null},"trackingNumbers":[{"tn":"S24DEMO456393"},{"tn":"S24DEMO169411"}],"recipient":{"name":null,"address":null,"postCode":"94901","city":null,"subdivision":null}},"events":[{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0f46","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Delivered to the addressee","occurrenceDatetime":"2021-03-04T17:12:57","order":null,"location":"SAN RAFAEL, CA 94901","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":"delivery_delivered","statusCategory":"delivery","statusMilestone":"delivered"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a00ja","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Out for Delivery","occurrenceDatetime":"2021-03-04T10:12:57","order":null,"location":"SAN RAFAEL, CA 94901","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":"delivery_out_for_delivery","statusCategory":"delivery","statusMilestone":"out_for_delivery"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0765","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Arrived at Hub, Your item arrived at the hub.","occurrenceDatetime":"2021-03-04T06:12:57","order":null,"location":"SAN RAFAEL, CA 94901","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0f67","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Processed Through Regional Facility","occurrenceDatetime":"2021-03-03T17:12:57","order":null,"location":"LOS ANGELES CA INTERNATIONAL DISTRIBUTION CENTER","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0f24","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Arrived at Regional Facility","occurrenceDatetime":"2021-03-03T15:38:57","order":null,"location":"LOS ANGELES CA INTERNATIONAL DISTRIBUTION CENTER","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"5adff7f7-c370-4026-9ff5-2ff4156ff2ff","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Flight Departure","occurrenceDatetime":"2021-03-02T23:24:50","order":null,"location":"Beijing airport","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"918c20dc-9a9b-4588-bf62-ded9761d9621","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Dispatched from Office of Exchange","occurrenceDatetime":"2021-03-02T22:23:41","order":null,"location":"Beijing","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"b8dabe5f-1022-41c5-ad3a-8c8e4aacc965","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Depature from Local Sorting Center","occurrenceDatetime":"2021-03-02T19:24:57","order":null,"location":"Beijing","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"ee8ebe96-4eae-4a91-9a99-6f3afa6a0f45","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Package Received","occurrenceDatetime":"2021-03-02T15:38:57","order":null,"location":"Beijing","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":"transit","statusMilestone":"in_transit"}],"statistics":{"timestamps":{"infoReceivedDatetime":"2021-03-02T15:38:57","inTransitDatetime":"2021-03-02T15:38:57","outForDeliveryDatetime":"2021-03-04T10:12:57","failedAttemptDatetime":null,"availableForPickupDatetime":null,"exceptionDatetime":null,"deliveredDatetime":"2021-03-04T17:12:57"}}}]

class Data {
  Data({
      List<Trackings>? trackings,}){
    _trackings = trackings;
}

  Data.fromJson(dynamic json) {
    if (json['trackings'] != null) {
      _trackings = [];
      json['trackings'].forEach((v) {
        _trackings?.add(Trackings.fromJson(v));
      });
    }
  }
  List<Trackings>? _trackings;
Data copyWith({  List<Trackings>? trackings,
}) => Data(  trackings: trackings ?? _trackings,
);
  List<Trackings>? get trackings => _trackings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_trackings != null) {
      map['trackings'] = _trackings?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// shipment : {"shipmentId":"f4f888d7-d140-423f-9a48-e0689d27e098","statusCode":"delivery_delivered","statusCategory":"delivery","statusMilestone":"delivered","originCountryCode":"US","destinationCountryCode":"CN","delivery":{"estimatedDeliveryDate":null,"service":null,"signedBy":null},"trackingNumbers":[{"tn":"S24DEMO456393"},{"tn":"S24DEMO169411"}],"recipient":{"name":null,"address":null,"postCode":"94901","city":null,"subdivision":null}}
/// events : [{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0f46","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Delivered to the addressee","occurrenceDatetime":"2021-03-04T17:12:57","order":null,"location":"SAN RAFAEL, CA 94901","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":"delivery_delivered","statusCategory":"delivery","statusMilestone":"delivered"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a00ja","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Out for Delivery","occurrenceDatetime":"2021-03-04T10:12:57","order":null,"location":"SAN RAFAEL, CA 94901","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":"delivery_out_for_delivery","statusCategory":"delivery","statusMilestone":"out_for_delivery"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0765","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Arrived at Hub, Your item arrived at the hub.","occurrenceDatetime":"2021-03-04T06:12:57","order":null,"location":"SAN RAFAEL, CA 94901","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0f67","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Processed Through Regional Facility","occurrenceDatetime":"2021-03-03T17:12:57","order":null,"location":"LOS ANGELES CA INTERNATIONAL DISTRIBUTION CENTER","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"ee8ebe96-4eae-4a91-9a99-8f3afa6a0f24","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO169411","status":"Arrived at Regional Facility","occurrenceDatetime":"2021-03-03T15:38:57","order":null,"location":"LOS ANGELES CA INTERNATIONAL DISTRIBUTION CENTER","sourceCode":"usps-tracking","courierCode":"us-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"5adff7f7-c370-4026-9ff5-2ff4156ff2ff","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Flight Departure","occurrenceDatetime":"2021-03-02T23:24:50","order":null,"location":"Beijing airport","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"918c20dc-9a9b-4588-bf62-ded9761d9621","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Dispatched from Office of Exchange","occurrenceDatetime":"2021-03-02T22:23:41","order":null,"location":"Beijing","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"b8dabe5f-1022-41c5-ad3a-8c8e4aacc965","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Depature from Local Sorting Center","occurrenceDatetime":"2021-03-02T19:24:57","order":null,"location":"Beijing","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":null,"statusMilestone":"in_transit"},{"eventId":"ee8ebe96-4eae-4a91-9a99-6f3afa6a0f45","trackingNumber":"S24DEMO169411","eventTrackingNumber":"S24DEMO456393","status":"Package Received","occurrenceDatetime":"2021-03-02T15:38:57","order":null,"location":"Beijing","sourceCode":"china-post-tracking","courierCode":"cn-post","statusCode":null,"statusCategory":"transit","statusMilestone":"in_transit"}]
/// statistics : {"timestamps":{"infoReceivedDatetime":"2021-03-02T15:38:57","inTransitDatetime":"2021-03-02T15:38:57","outForDeliveryDatetime":"2021-03-04T10:12:57","failedAttemptDatetime":null,"availableForPickupDatetime":null,"exceptionDatetime":null,"deliveredDatetime":"2021-03-04T17:12:57"}}

class Trackings {
  Trackings({
      Shipment? shipment,
      List<Events>? events,
      Statistics? statistics,}){
    _shipment = shipment;
    _events = events;
    _statistics = statistics;
}

  Trackings.fromJson(dynamic json) {
    _shipment = json['shipment'] != null ? Shipment.fromJson(json['shipment']) : null;
    if (json['events'] != null) {
      _events = [];
      json['events'].forEach((v) {
        _events?.add(Events.fromJson(v));
      });
    }
    _statistics = json['statistics'] != null ? Statistics.fromJson(json['statistics']) : null;
  }
  Shipment? _shipment;
  List<Events>? _events;
  Statistics? _statistics;
Trackings copyWith({  Shipment? shipment,
  List<Events>? events,
  Statistics? statistics,
}) => Trackings(  shipment: shipment ?? _shipment,
  events: events ?? _events,
  statistics: statistics ?? _statistics,
);
  Shipment? get shipment => _shipment;
  List<Events>? get events => _events;
  Statistics? get statistics => _statistics;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_shipment != null) {
      map['shipment'] = _shipment?.toJson();
    }
    if (_events != null) {
      map['events'] = _events?.map((v) => v.toJson()).toList();
    }
    if (_statistics != null) {
      map['statistics'] = _statistics?.toJson();
    }
    return map;
  }

}

/// timestamps : {"infoReceivedDatetime":"2021-03-02T15:38:57","inTransitDatetime":"2021-03-02T15:38:57","outForDeliveryDatetime":"2021-03-04T10:12:57","failedAttemptDatetime":null,"availableForPickupDatetime":null,"exceptionDatetime":null,"deliveredDatetime":"2021-03-04T17:12:57"}

class Statistics {
  Statistics({
      Timestamps? timestamps,}){
    _timestamps = timestamps;
}

  Statistics.fromJson(dynamic json) {
    _timestamps = json['timestamps'] != null ? Timestamps.fromJson(json['timestamps']) : null;
  }
  Timestamps? _timestamps;
Statistics copyWith({  Timestamps? timestamps,
}) => Statistics(  timestamps: timestamps ?? _timestamps,
);
  Timestamps? get timestamps => _timestamps;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_timestamps != null) {
      map['timestamps'] = _timestamps?.toJson();
    }
    return map;
  }

}

/// infoReceivedDatetime : "2021-03-02T15:38:57"
/// inTransitDatetime : "2021-03-02T15:38:57"
/// outForDeliveryDatetime : "2021-03-04T10:12:57"
/// failedAttemptDatetime : null
/// availableForPickupDatetime : null
/// exceptionDatetime : null
/// deliveredDatetime : "2021-03-04T17:12:57"

class Timestamps {
  Timestamps({
      String? infoReceivedDatetime,
      String? inTransitDatetime,
      String? outForDeliveryDatetime,
      dynamic failedAttemptDatetime,
      dynamic availableForPickupDatetime,
      dynamic exceptionDatetime,
      String? deliveredDatetime,}){
    _infoReceivedDatetime = infoReceivedDatetime;
    _inTransitDatetime = inTransitDatetime;
    _outForDeliveryDatetime = outForDeliveryDatetime;
    _failedAttemptDatetime = failedAttemptDatetime;
    _availableForPickupDatetime = availableForPickupDatetime;
    _exceptionDatetime = exceptionDatetime;
    _deliveredDatetime = deliveredDatetime;
}

  Timestamps.fromJson(dynamic json) {
    _infoReceivedDatetime = json['infoReceivedDatetime'];
    _inTransitDatetime = json['inTransitDatetime'];
    _outForDeliveryDatetime = json['outForDeliveryDatetime'];
    _failedAttemptDatetime = json['failedAttemptDatetime'];
    _availableForPickupDatetime = json['availableForPickupDatetime'];
    _exceptionDatetime = json['exceptionDatetime'];
    _deliveredDatetime = json['deliveredDatetime'];
  }
  String? _infoReceivedDatetime;
  String? _inTransitDatetime;
  String? _outForDeliveryDatetime;
  dynamic _failedAttemptDatetime;
  dynamic _availableForPickupDatetime;
  dynamic _exceptionDatetime;
  String? _deliveredDatetime;
Timestamps copyWith({  String? infoReceivedDatetime,
  String? inTransitDatetime,
  String? outForDeliveryDatetime,
  dynamic failedAttemptDatetime,
  dynamic availableForPickupDatetime,
  dynamic exceptionDatetime,
  String? deliveredDatetime,
}) => Timestamps(  infoReceivedDatetime: infoReceivedDatetime ?? _infoReceivedDatetime,
  inTransitDatetime: inTransitDatetime ?? _inTransitDatetime,
  outForDeliveryDatetime: outForDeliveryDatetime ?? _outForDeliveryDatetime,
  failedAttemptDatetime: failedAttemptDatetime ?? _failedAttemptDatetime,
  availableForPickupDatetime: availableForPickupDatetime ?? _availableForPickupDatetime,
  exceptionDatetime: exceptionDatetime ?? _exceptionDatetime,
  deliveredDatetime: deliveredDatetime ?? _deliveredDatetime,
);
  String? get infoReceivedDatetime => _infoReceivedDatetime;
  String? get inTransitDatetime => _inTransitDatetime;
  String? get outForDeliveryDatetime => _outForDeliveryDatetime;
  dynamic get failedAttemptDatetime => _failedAttemptDatetime;
  dynamic get availableForPickupDatetime => _availableForPickupDatetime;
  dynamic get exceptionDatetime => _exceptionDatetime;
  String? get deliveredDatetime => _deliveredDatetime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['infoReceivedDatetime'] = _infoReceivedDatetime;
    map['inTransitDatetime'] = _inTransitDatetime;
    map['outForDeliveryDatetime'] = _outForDeliveryDatetime;
    map['failedAttemptDatetime'] = _failedAttemptDatetime;
    map['availableForPickupDatetime'] = _availableForPickupDatetime;
    map['exceptionDatetime'] = _exceptionDatetime;
    map['deliveredDatetime'] = _deliveredDatetime;
    return map;
  }

}

/// eventId : "ee8ebe96-4eae-4a91-9a99-8f3afa6a0f46"
/// trackingNumber : "S24DEMO169411"
/// eventTrackingNumber : "S24DEMO169411"
/// status : "Delivered to the addressee"
/// occurrenceDatetime : "2021-03-04T17:12:57"
/// order : null
/// location : "SAN RAFAEL, CA 94901"
/// sourceCode : "usps-tracking"
/// courierCode : "us-post"
/// statusCode : "delivery_delivered"
/// statusCategory : "delivery"
/// statusMilestone : "delivered"

class Events {
  Events({
      String? eventId,
      String? trackingNumber,
      String? eventTrackingNumber,
      String? status,
      String? occurrenceDatetime,
      dynamic order,
      String? location,
      String? sourceCode,
      String? courierCode,
      String? statusCode,
      String? statusCategory,
      String? statusMilestone,}){
    _eventId = eventId;
    _trackingNumber = trackingNumber;
    _eventTrackingNumber = eventTrackingNumber;
    _status = status;
    _occurrenceDatetime = occurrenceDatetime;
    _order = order;
    _location = location;
    _sourceCode = sourceCode;
    _courierCode = courierCode;
    _statusCode = statusCode;
    _statusCategory = statusCategory;
    _statusMilestone = statusMilestone;
}

  Events.fromJson(dynamic json) {
    _eventId = json['eventId'];
    _trackingNumber = json['trackingNumber'];
    _eventTrackingNumber = json['eventTrackingNumber'];
    _status = json['status'];
    _occurrenceDatetime = json['occurrenceDatetime'];
    _order = json['order'];
    _location = json['location'];
    _sourceCode = json['sourceCode'];
    _courierCode = json['courierCode'];
    _statusCode = json['statusCode'];
    _statusCategory = json['statusCategory'];
    _statusMilestone = json['statusMilestone'];
  }
  String? _eventId;
  String? _trackingNumber;
  String? _eventTrackingNumber;
  String? _status;
  String? _occurrenceDatetime;
  dynamic _order;
  String? _location;
  String? _sourceCode;
  String? _courierCode;
  String? _statusCode;
  String? _statusCategory;
  String? _statusMilestone;
Events copyWith({  String? eventId,
  String? trackingNumber,
  String? eventTrackingNumber,
  String? status,
  String? occurrenceDatetime,
  dynamic order,
  String? location,
  String? sourceCode,
  String? courierCode,
  String? statusCode,
  String? statusCategory,
  String? statusMilestone,
}) => Events(  eventId: eventId ?? _eventId,
  trackingNumber: trackingNumber ?? _trackingNumber,
  eventTrackingNumber: eventTrackingNumber ?? _eventTrackingNumber,
  status: status ?? _status,
  occurrenceDatetime: occurrenceDatetime ?? _occurrenceDatetime,
  order: order ?? _order,
  location: location ?? _location,
  sourceCode: sourceCode ?? _sourceCode,
  courierCode: courierCode ?? _courierCode,
  statusCode: statusCode ?? _statusCode,
  statusCategory: statusCategory ?? _statusCategory,
  statusMilestone: statusMilestone ?? _statusMilestone,
);
  String? get eventId => _eventId;
  String? get trackingNumber => _trackingNumber;
  String? get eventTrackingNumber => _eventTrackingNumber;
  String? get status => _status;
  String? get occurrenceDatetime => _occurrenceDatetime;
  dynamic get order => _order;
  String? get location => _location;
  String? get sourceCode => _sourceCode;
  String? get courierCode => _courierCode;
  String? get statusCode => _statusCode;
  String? get statusCategory => _statusCategory;
  String? get statusMilestone => _statusMilestone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['eventId'] = _eventId;
    map['trackingNumber'] = _trackingNumber;
    map['eventTrackingNumber'] = _eventTrackingNumber;
    map['status'] = _status;
    map['occurrenceDatetime'] = _occurrenceDatetime;
    map['order'] = _order;
    map['location'] = _location;
    map['sourceCode'] = _sourceCode;
    map['courierCode'] = _courierCode;
    map['statusCode'] = _statusCode;
    map['statusCategory'] = _statusCategory;
    map['statusMilestone'] = _statusMilestone;
    return map;
  }

}

/// shipmentId : "f4f888d7-d140-423f-9a48-e0689d27e098"
/// statusCode : "delivery_delivered"
/// statusCategory : "delivery"
/// statusMilestone : "delivered"
/// originCountryCode : "US"
/// destinationCountryCode : "CN"
/// delivery : {"estimatedDeliveryDate":null,"service":null,"signedBy":null}
/// trackingNumbers : [{"tn":"S24DEMO456393"},{"tn":"S24DEMO169411"}]
/// recipient : {"name":null,"address":null,"postCode":"94901","city":null,"subdivision":null}

class Shipment {
  Shipment({
      String? shipmentId,
      String? statusCode,
      String? statusCategory,
      String? statusMilestone,
      String? originCountryCode,
      String? destinationCountryCode,
      Delivery? delivery,
      List<TrackingNumbers>? trackingNumbers,
      Recipient? recipient,}){
    _shipmentId = shipmentId;
    _statusCode = statusCode;
    _statusCategory = statusCategory;
    _statusMilestone = statusMilestone;
    _originCountryCode = originCountryCode;
    _destinationCountryCode = destinationCountryCode;
    _delivery = delivery;
    _trackingNumbers = trackingNumbers;
    _recipient = recipient;
}

  Shipment.fromJson(dynamic json) {
    _shipmentId = json['shipmentId'];
    _statusCode = json['statusCode'];
    _statusCategory = json['statusCategory'];
    _statusMilestone = json['statusMilestone'];
    _originCountryCode = json['originCountryCode'];
    _destinationCountryCode = json['destinationCountryCode'];
    _delivery = json['delivery'] != null ? Delivery.fromJson(json['delivery']) : null;
    if (json['trackingNumbers'] != null) {
      _trackingNumbers = [];
      json['trackingNumbers'].forEach((v) {
        _trackingNumbers?.add(TrackingNumbers.fromJson(v));
      });
    }
    _recipient = json['recipient'] != null ? Recipient.fromJson(json['recipient']) : null;
  }
  String? _shipmentId;
  String? _statusCode;
  String? _statusCategory;
  String? _statusMilestone;
  String? _originCountryCode;
  String? _destinationCountryCode;
  Delivery? _delivery;
  List<TrackingNumbers>? _trackingNumbers;
  Recipient? _recipient;
Shipment copyWith({  String? shipmentId,
  String? statusCode,
  String? statusCategory,
  String? statusMilestone,
  String? originCountryCode,
  String? destinationCountryCode,
  Delivery? delivery,
  List<TrackingNumbers>? trackingNumbers,
  Recipient? recipient,
}) => Shipment(  shipmentId: shipmentId ?? _shipmentId,
  statusCode: statusCode ?? _statusCode,
  statusCategory: statusCategory ?? _statusCategory,
  statusMilestone: statusMilestone ?? _statusMilestone,
  originCountryCode: originCountryCode ?? _originCountryCode,
  destinationCountryCode: destinationCountryCode ?? _destinationCountryCode,
  delivery: delivery ?? _delivery,
  trackingNumbers: trackingNumbers ?? _trackingNumbers,
  recipient: recipient ?? _recipient,
);
  String? get shipmentId => _shipmentId;
  String? get statusCode => _statusCode;
  String? get statusCategory => _statusCategory;
  String? get statusMilestone => _statusMilestone;
  String? get originCountryCode => _originCountryCode;
  String? get destinationCountryCode => _destinationCountryCode;
  Delivery? get delivery => _delivery;
  List<TrackingNumbers>? get trackingNumbers => _trackingNumbers;
  Recipient? get recipient => _recipient;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['shipmentId'] = _shipmentId;
    map['statusCode'] = _statusCode;
    map['statusCategory'] = _statusCategory;
    map['statusMilestone'] = _statusMilestone;
    map['originCountryCode'] = _originCountryCode;
    map['destinationCountryCode'] = _destinationCountryCode;
    if (_delivery != null) {
      map['delivery'] = _delivery?.toJson();
    }
    if (_trackingNumbers != null) {
      map['trackingNumbers'] = _trackingNumbers?.map((v) => v.toJson()).toList();
    }
    if (_recipient != null) {
      map['recipient'] = _recipient?.toJson();
    }
    return map;
  }

}

/// name : null
/// address : null
/// postCode : "94901"
/// city : null
/// subdivision : null

class Recipient {
  Recipient({
      dynamic name,
      dynamic address,
      String? postCode,
      dynamic city,
      dynamic subdivision,}){
    _name = name;
    _address = address;
    _postCode = postCode;
    _city = city;
    _subdivision = subdivision;
}

  Recipient.fromJson(dynamic json) {
    _name = json['name'];
    _address = json['address'];
    _postCode = json['postCode'];
    _city = json['city'];
    _subdivision = json['subdivision'];
  }
  dynamic _name;
  dynamic _address;
  String? _postCode;
  dynamic _city;
  dynamic _subdivision;
Recipient copyWith({  dynamic name,
  dynamic address,
  String? postCode,
  dynamic city,
  dynamic subdivision,
}) => Recipient(  name: name ?? _name,
  address: address ?? _address,
  postCode: postCode ?? _postCode,
  city: city ?? _city,
  subdivision: subdivision ?? _subdivision,
);
  dynamic get name => _name;
  dynamic get address => _address;
  String? get postCode => _postCode;
  dynamic get city => _city;
  dynamic get subdivision => _subdivision;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['address'] = _address;
    map['postCode'] = _postCode;
    map['city'] = _city;
    map['subdivision'] = _subdivision;
    return map;
  }

}

/// tn : "S24DEMO456393"

class TrackingNumbers {
  TrackingNumbers({
      String? tn,}){
    _tn = tn;
}

  TrackingNumbers.fromJson(dynamic json) {
    _tn = json['tn'];
  }
  String? _tn;
TrackingNumbers copyWith({  String? tn,
}) => TrackingNumbers(  tn: tn ?? _tn,
);
  String? get tn => _tn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tn'] = _tn;
    return map;
  }

}

/// estimatedDeliveryDate : null
/// service : null
/// signedBy : null

class Delivery {
  Delivery({
      dynamic estimatedDeliveryDate,
      dynamic service,
      dynamic signedBy,}){
    _estimatedDeliveryDate = estimatedDeliveryDate;
    _service = service;
    _signedBy = signedBy;
}

  Delivery.fromJson(dynamic json) {
    _estimatedDeliveryDate = json['estimatedDeliveryDate'];
    _service = json['service'];
    _signedBy = json['signedBy'];
  }
  dynamic _estimatedDeliveryDate;
  dynamic _service;
  dynamic _signedBy;
Delivery copyWith({  dynamic estimatedDeliveryDate,
  dynamic service,
  dynamic signedBy,
}) => Delivery(  estimatedDeliveryDate: estimatedDeliveryDate ?? _estimatedDeliveryDate,
  service: service ?? _service,
  signedBy: signedBy ?? _signedBy,
);
  dynamic get estimatedDeliveryDate => _estimatedDeliveryDate;
  dynamic get service => _service;
  dynamic get signedBy => _signedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['estimatedDeliveryDate'] = _estimatedDeliveryDate;
    map['service'] = _service;
    map['signedBy'] = _signedBy;
    return map;
  }

}
