import 'package:yellowcabweb/model/CarFare.dart';
import 'package:yellowcabweb/model/DriverData.dart';

class RoundTripData {
  RoundTripData({
    bool? status,
    String? message,
    Roundtrip? roundtrip,
    List<Trips>? trips,
  }) {
    _status = status;
    _message = message;
    _roundtrip = roundtrip;
    _trips = trips;
  }

  RoundTripData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _roundtrip = json['roundtrip'] != null
        ? Roundtrip.fromJson(json['roundtrip'])
        : null;
    if (json['trips'] != null) {
      _trips = [];
      json['trips'].forEach((v) {
        _trips?.add(Trips.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  Roundtrip? _roundtrip;
  List<Trips>? _trips;
  RoundTripData copyWith({
    bool? status,
    String? message,
    Roundtrip? roundtrip,
    List<Trips>? trips,
  }) =>
      RoundTripData(
        status: status ?? _status,
        message: message ?? _message,
        roundtrip: roundtrip ?? _roundtrip,
        trips: trips ?? _trips,
      );
  bool? get status => _status;
  String? get message => _message;
  Roundtrip? get roundtrip => _roundtrip;
  List<Trips>? get trips => _trips;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_roundtrip != null) {
      map['roundtrip'] = _roundtrip?.toJson();
    }
    if (_trips != null) {
      map['trips'] = _trips?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Trips {
  Trips({
    int? id,
    int? bookingId,
    String? pickupCity,
    String? dropCity,
    String? pickupDate,
    String? pickupTime,
    String? noOfDays,
    String? createdAt,
    String? pickupAddress,
    String? returnDate,
    String? returnTime,
    String? estimatedFare,
    String? gst,
    String? totalKm,
    String? driverAllowance,
    String? passengerName,
    String? phone,
    dynamic userId,
    dynamic status,
    String? otp,
    String? odometerStart,
    String? odometerStop,
    String? odometerTotal,
    dynamic carFareId,
    String? carType,
    dynamic driverId,
    Driver? driver,
    Carfare? carfare,
  }) {
    _id = id;
    _bookingId = bookingId;
    _pickupCity = pickupCity;
    _dropCity = dropCity;
    _pickupDate = pickupDate;
    _pickupTime = pickupTime;
    _noOfDays = noOfDays;
    _createdAt = createdAt;
    _pickupAddress = pickupAddress;
    _returnDate = returnDate;
    _returnTime = returnTime;
    _estimatedFare = estimatedFare;
    _gst = gst;
    _totalKm = totalKm;
    _driverAllowance = driverAllowance;
    _passengerName = passengerName;
    _phone = phone;
    _userId = userId;
    _status = status;
    _otp = otp;
    _odometerStart = odometerStart;
    _odometerStop = odometerStop;
    _odometerTotal = odometerTotal;
    _carFareId = carFareId;
    _carType = carType;
    _driverId = driverId;
    _driver = driver;
    _carfare = carfare;
  }

  Trips.fromJson(dynamic json) {
    _id = json['id'];
    _bookingId = json['booking_id'];
    _pickupCity = json['pickup_city'];
    _dropCity = json['drop_city'];
    _pickupDate = json['pickup_date'];
    _pickupTime = json['pickup_time'];
    _noOfDays = json['no_of_days'];
    _createdAt = json['created_at'];
    _pickupAddress = json['pickup_address'];
    _returnDate = json['return_date'];
    _returnTime = json['return_time'];
    _estimatedFare = json['estimated_fare'];
    _gst = json['gst'];
    _totalKm = json['total_km'];
    _driverAllowance = json['driver_allowance'];
    _passengerName = json['passenger_name'];
    _phone = json['phone'];
    _userId = json['user_id'];
    _status = json['status'];
    _otp = json['otp'];
    _odometerStart = json['odometer_start'];
    _odometerStop = json['odometer_stop'];
    _odometerTotal = json['odometer_total'];
    _carFareId = json['car_fare_id'];
    _carType = json['car_type'];
    _driverId = json['driver_id'];
    _driver = json['driver'] != null ? Driver.fromJson(json['driver']) : null;
    _carfare =
        json['carfare'] != null ? Carfare.fromJson(json['carfare']) : null;
  }
  int? _id;
  int? _bookingId;
  String? _pickupCity;
  String? _dropCity;
  String? _pickupDate;
  String? _pickupTime;
  String? _noOfDays;
  String? _createdAt;
  String? _pickupAddress;
  String? _returnDate;
  String? _returnTime;
  String? _estimatedFare;
  String? _gst;
  String? _totalKm;
  String? _driverAllowance;
  String? _passengerName;
  String? _phone;
  dynamic _userId;
  dynamic _status;
  String? _otp;
  String? _odometerStart;
  String? _odometerStop;
  String? _odometerTotal;
  dynamic _carFareId;
  String? _carType;
  dynamic _driverId;
  Driver? _driver;
  Carfare? _carfare;
  Trips copyWith({
    int? id,
    int? bookingId,
    String? pickupCity,
    String? dropCity,
    String? pickupDate,
    String? pickupTime,
    String? noOfDays,
    String? createdAt,
    String? pickupAddress,
    String? returnDate,
    String? returnTime,
    String? estimatedFare,
    String? gst,
    String? totalKm,
    String? driverAllowance,
    String? passengerName,
    String? phone,
    dynamic userId,
    dynamic status,
    String? otp,
    String? odometerStart,
    String? odometerStop,
    String? odometerTotal,
    dynamic carFareId,
    String? carType,
    dynamic driverId,
    Driver? driver,
    Carfare? carfare,
  }) =>
      Trips(
        id: id ?? _id,
        bookingId: bookingId ?? _bookingId,
        pickupCity: pickupCity ?? _pickupCity,
        dropCity: dropCity ?? _dropCity,
        pickupDate: pickupDate ?? _pickupDate,
        pickupTime: pickupTime ?? _pickupTime,
        noOfDays: noOfDays ?? _noOfDays,
        createdAt: createdAt ?? _createdAt,
        pickupAddress: pickupAddress ?? _pickupAddress,
        returnDate: returnDate ?? _returnDate,
        returnTime: returnTime ?? _returnTime,
        estimatedFare: estimatedFare ?? _estimatedFare,
        gst: gst ?? _gst,
        totalKm: totalKm ?? _totalKm,
        driverAllowance: driverAllowance ?? _driverAllowance,
        passengerName: passengerName ?? _passengerName,
        phone: phone ?? _phone,
        userId: userId ?? _userId,
        status: status ?? _status,
        otp: otp ?? _otp,
        odometerStart: odometerStart ?? _odometerStart,
        odometerStop: odometerStop ?? _odometerStop,
        odometerTotal: odometerTotal ?? _odometerTotal,
        carFareId: carFareId ?? _carFareId,
        carType: carType ?? _carType,
        driverId: driverId ?? _driverId,
        driver: driver ?? _driver,
        carfare: carfare ?? _carfare,
      );
  int? get id => _id;
  int? get bookingId => _bookingId;
  String? get pickupCity => _pickupCity;
  String? get dropCity => _dropCity;
  String? get pickupDate => _pickupDate;
  String? get pickupTime => _pickupTime;
  String? get noOfDays => _noOfDays;
  String? get createdAt => _createdAt;
  String? get pickupAddress => _pickupAddress;
  String? get returnDate => _returnDate;
  String? get returnTime => _returnTime;
  String? get estimatedFare => _estimatedFare;
  String? get gst => _gst;
  String? get totalKm => _totalKm;
  String? get driverAllowance => _driverAllowance;
  String? get passengerName => _passengerName;
  String? get phone => _phone;
  dynamic get userId => _userId;
  dynamic get status => _status;
  String? get otp => _otp;
  String? get odometerStart => _odometerStart;
  String? get odometerStop => _odometerStop;
  String? get odometerTotal => _odometerTotal;
  dynamic get carFareId => _carFareId;
  String? get carType => _carType;
  dynamic get driverId => _driverId;
  Driver? get driver => _driver;
  Carfare? get carfare => _carfare;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['booking_id'] = _bookingId;
    map['pickup_city'] = _pickupCity;
    map['drop_city'] = _dropCity;
    map['pickup_date'] = _pickupDate;
    map['pickup_time'] = _pickupTime;
    map['no_of_days'] = _noOfDays;
    map['created_at'] = _createdAt;
    map['pickup_address'] = _pickupAddress;
    map['return_date'] = _returnDate;
    map['return_time'] = _returnTime;
    map['estimated_fare'] = _estimatedFare;
    map['gst'] = _gst;
    map['total_km'] = _totalKm;
    map['driver_allowance'] = _driverAllowance;
    map['passenger_name'] = _passengerName;
    map['phone'] = _phone;
    map['user_id'] = _userId;
    map['status'] = _status;
    map['otp'] = _otp;
    map['odometer_start'] = _odometerStart;
    map['odometer_stop'] = _odometerStop;
    map['odometer_total'] = _odometerTotal;
    map['car_fare_id'] = _carFareId;
    map['car_type'] = _carType;
    map['driver_id'] = _driverId;
    if (_driver != null) {
      map['driver'] = _driver?.toJson();
    }
    if (_carfare != null) {
      map['carfare'] = _carfare?.toJson();
    }
    return map;
  }
}

class Roundtrip {
  Roundtrip({
    int? bookingId,
    String? pickupCity,
    String? dropCity,
    String? pickupAddress,
    String? noOfDays,
    String? pickupDate,
    String? pickupTime,
    String? estimatedFare,
    String? gst,
    String? returnDate,
    String? returnTime,
    String? driverAllowance,
    String? totalKm,
    String? passengerName,
    String? phone,
    dynamic carFareId,
    String? carType,
    String? userId,
    String? status,
    String? driverId,
    String? otp,
    String? odometerStart,
    String? odometerStop,
    String? odometerTotal,
    int? id,
  }) {
    _bookingId = bookingId;
    _pickupCity = pickupCity;
    _dropCity = dropCity;
    _pickupAddress = pickupAddress;
    _noOfDays = noOfDays;
    _pickupDate = pickupDate;
    _pickupTime = pickupTime;
    _estimatedFare = estimatedFare;
    _gst = gst;
    _returnDate = returnDate;
    _returnTime = returnTime;
    _driverAllowance = driverAllowance;
    _totalKm = totalKm;
    _passengerName = passengerName;
    _phone = phone;
    _carFareId = carFareId;
    _carType = carType;
    _userId = userId;
    _status = status;
    _driverId = driverId;
    _otp = otp;
    _odometerStart = odometerStart;
    _odometerStop = odometerStop;
    _odometerTotal = odometerTotal;
    _id = id;
  }

  Roundtrip.fromJson(dynamic json) {
    _bookingId = json['booking_id'];
    _pickupCity = json['pickup_city'];
    _dropCity = json['drop_city'];
    _pickupAddress = json['pickup_address'];
    _noOfDays = json['no_of_days'];
    _pickupDate = json['pickup_date'];
    _pickupTime = json['pickup_time'];
    _estimatedFare = json['estimated_fare'];
    _gst = json['gst'];
    _returnDate = json['return_date'];
    _returnTime = json['return_time'];
    _driverAllowance = json['driver_allowance'];
    _totalKm = json['total_km'];
    _passengerName = json['passenger_name'];
    _phone = json['phone'];
    _carFareId = json['car_fare_id'];
    _carType = json['car_type'];
    _userId = json['user_id'];
    _status = json['status'];
    _driverId = json['driver_id'];
    _otp = json['otp'];
    _odometerStart = json['odometer_start'];
    _odometerStop = json['odometer_stop'];
    _odometerTotal = json['odometer_total'];
    _id = json['id'];
  }
  int? _bookingId;
  String? _pickupCity;
  String? _dropCity;
  String? _pickupAddress;
  String? _noOfDays;
  String? _pickupDate;
  String? _pickupTime;
  String? _estimatedFare;
  String? _gst;
  String? _returnDate;
  String? _returnTime;
  String? _driverAllowance;
  String? _totalKm;
  String? _passengerName;
  String? _phone;
  dynamic _carFareId;
  String? _carType;
  String? _userId;
  String? _status;
  String? _driverId;
  String? _otp;
  String? _odometerStart;
  String? _odometerStop;
  String? _odometerTotal;
  int? _id;
  Roundtrip copyWith({
    int? bookingId,
    String? pickupCity,
    String? dropCity,
    String? pickupAddress,
    String? noOfDays,
    String? pickupDate,
    String? pickupTime,
    String? estimatedFare,
    String? gst,
    String? returnDate,
    String? returnTime,
    String? driverAllowance,
    String? totalKm,
    String? passengerName,
    String? phone,
    dynamic carFareId,
    String? carType,
    String? userId,
    String? status,
    String? driverId,
    String? otp,
    String? odometerStart,
    String? odometerStop,
    String? odometerTotal,
    int? id,
  }) =>
      Roundtrip(
        bookingId: bookingId ?? _bookingId,
        pickupCity: pickupCity ?? _pickupCity,
        dropCity: dropCity ?? _dropCity,
        pickupAddress: pickupAddress ?? _pickupAddress,
        noOfDays: noOfDays ?? _noOfDays,
        pickupDate: pickupDate ?? _pickupDate,
        pickupTime: pickupTime ?? _pickupTime,
        estimatedFare: estimatedFare ?? _estimatedFare,
        gst: gst ?? _gst,
        returnDate: returnDate ?? _returnDate,
        returnTime: returnTime ?? _returnTime,
        driverAllowance: driverAllowance ?? _driverAllowance,
        totalKm: totalKm ?? _totalKm,
        passengerName: passengerName ?? _passengerName,
        phone: phone ?? _phone,
        carFareId: carFareId ?? _carFareId,
        carType: carType ?? _carType,
        userId: userId ?? _userId,
        status: status ?? _status,
        driverId: driverId ?? _driverId,
        otp: otp ?? _otp,
        odometerStart: odometerStart ?? _odometerStart,
        odometerStop: odometerStop ?? _odometerStop,
        odometerTotal: odometerTotal ?? _odometerTotal,
        id: id ?? _id,
      );
  int? get bookingId => _bookingId;
  String? get pickupCity => _pickupCity;
  String? get dropCity => _dropCity;
  String? get pickupAddress => _pickupAddress;
  String? get noOfDays => _noOfDays;
  String? get pickupDate => _pickupDate;
  String? get pickupTime => _pickupTime;
  String? get estimatedFare => _estimatedFare;
  String? get gst => _gst;
  String? get returnDate => _returnDate;
  String? get returnTime => _returnTime;
  String? get driverAllowance => _driverAllowance;
  String? get totalKm => _totalKm;
  String? get passengerName => _passengerName;
  String? get phone => _phone;
  dynamic get carFareId => _carFareId;
  String? get carType => _carType;
  String? get userId => _userId;
  String? get status => _status;
  String? get driverId => _driverId;
  String? get otp => _otp;
  String? get odometerStart => _odometerStart;
  String? get odometerStop => _odometerStop;
  String? get odometerTotal => _odometerTotal;
  int? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['booking_id'] = _bookingId;
    map['pickup_city'] = _pickupCity;
    map['drop_city'] = _dropCity;
    map['pickup_address'] = _pickupAddress;
    map['no_of_days'] = _noOfDays;
    map['pickup_date'] = _pickupDate;
    map['pickup_time'] = _pickupTime;
    map['estimated_fare'] = _estimatedFare;
    map['gst'] = _gst;
    map['return_date'] = _returnDate;
    map['return_time'] = _returnTime;
    map['driver_allowance'] = _driverAllowance;
    map['total_km'] = _totalKm;
    map['passenger_name'] = _passengerName;
    map['phone'] = _phone;
    map['car_fare_id'] = _carFareId;
    map['car_type'] = _carType;
    map['user_id'] = _userId;
    map['status'] = _status;
    map['driver_id'] = _driverId;
    map['otp'] = _otp;
    map['odometer_start'] = _odometerStart;
    map['odometer_stop'] = _odometerStop;
    map['odometer_total'] = _odometerTotal;
    map['id'] = _id;
    return map;
  }

  set id(value) {
    _id = value;
  }

  set odometerTotal(value) {
    _odometerTotal = value;
  }

  set odometerStop(value) {
    _odometerStop = value;
  }

  set odometerStart(value) {
    _odometerStart = value;
  }

  set otp(value) {
    _otp = value;
  }

  set driverId(value) {
    _driverId = value;
  }

  set status(value) {
    _status = value;
  }

  set userId(value) {
    _userId = value;
  }

  set carType(value) {
    _carType = value;
  }

  set carFareId(value) {
    _carFareId = value;
  }

  set phone(value) {
    _phone = value;
  }

  set passengerName(value) {
    _passengerName = value;
  }

  set totalKm(value) {
    _totalKm = value;
  }

  set driverAllowance(value) {
    _driverAllowance = value;
  }

  set returnTime(value) {
    _returnTime = value;
  }

  set returnDate(value) {
    _returnDate = value;
  }

  set gst(value) {
    _gst = value;
  }

  set estimatedFare(value) {
    _estimatedFare = value;
  }

  set pickupTime(value) {
    _pickupTime = value;
  }

  set pickupDate(value) {
    _pickupDate = value;
  }

  set noOfDays(value) {
    _noOfDays = value;
  }

  set pickupAddress(value) {
    _pickupAddress = value;
  }

  set dropCity(value) {
    _dropCity = value;
  }

  set pickupCity(value) {
    _pickupCity = value;
  }

  set bookingId(value) {
    _bookingId = value;
  }
}
