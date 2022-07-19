import 'package:yellowcabweb/model/DriverData.dart';

class Booking {
  Booking({
    int? id,
    String? bookingId,
    String? pickupCity,
    String? pickupCityId,
    String? dropCity,
    String? dropCityId,
    String? pickupAddress,
    String? dropAddress,
    String? totalFare,
    String? givenFare,
    String? remainingFare,
    String? toll,
    String? driverFare,
    String? gst,
    String? createdAt,
    String? bookingDate,
    String? bookingTime,
    String? carTypeId,
    String? carType,
    String? userId,
    String? status,
    String? driverId,
    String? otp,
    String? otp2,
    String? passengerName,
    String? phone,
    String? bookingType,
    String? noOfDays,
    String? returnDate,
    String? returnTime,
    String? driverAllowance,
    String? totalKm,
    String? carFareId,
    String? carFare,
    String? odometerStart,
    String? odometerStop,
    String? odometerTotal,
    String? extraKm,
    String? extraMin,
    String? localPackageId,
    String? packageCarId,
    Driver? driver,
  }) {
    _id = id;
    _bookingId = bookingId;
    _pickupCity = pickupCity;
    _pickupCityId = pickupCityId;
    _dropCity = dropCity;
    _dropCityId = dropCityId;
    _pickupAddress = pickupAddress;
    _dropAddress = dropAddress;
    _totalFare = totalFare;
    _givenFare = givenFare;
    _remainingFare = remainingFare;
    _toll = toll;
    _driverFare = driverFare;
    _gst = gst;
    _createdAt = createdAt;
    _bookingDate = bookingDate;
    _bookingTime = bookingTime;
    _carTypeId = carTypeId;
    _carType = carType;
    _userId = userId;
    _status = status;
    _driverId = driverId;
    _otp = otp;
    _otp2 = otp2;
    _passengerName = passengerName;
    _phone = phone;
    _bookingType = bookingType;
    _noOfDays = noOfDays;
    _returnDate = returnDate;
    _returnTime = returnTime;
    _driverAllowance = driverAllowance;
    _totalKm = totalKm;
    _carFareId = carFareId;
    _carFare = carFare;
    _odometerStart = odometerStart;
    _odometerStop = odometerStop;
    _odometerTotal = odometerTotal;
    _extraKm = extraKm;
    _extraMin = extraMin;
    _localPackageId = localPackageId;
    _packageCarId = packageCarId;
    _driver = driver;
  }

  Booking.fromJson(dynamic json) {
    _id = json['id'];
    _bookingId = json['booking_id'];
    _pickupCity = json['pickup_city'];
    _pickupCityId = json['pickup_city_id'];
    _dropCity = json['drop_city'];
    _dropCityId = json['drop_city_id'];
    _pickupAddress = json['pickup_address'];
    _dropAddress = json['drop_address'];
    _totalFare = json['total_fare'];
    _givenFare = json['given_fare'];
    _remainingFare = json['remaining_fare'];
    _toll = json['toll'];
    _driverFare = json['driver_fare'];
    _gst = json['gst'];
    _createdAt = json['created_at'];
    _bookingDate = json['booking_date'];
    _bookingTime = json['booking_time'];
    _carTypeId = json['car_type_id'];
    _carType = json['car_type'];
    _userId = json['user_id'];
    _status = json['status'];
    _driverId = json['driver_id'];
    _otp = json['otp'];
    _otp2 = json['otp2'];
    _passengerName = json['passenger_name'];
    _phone = json['phone'];
    _bookingType = json['booking_type'];
    _noOfDays = json['no_of_days'];
    _returnDate = json['return_date'];
    _returnTime = json['return_time'];
    _driverAllowance = json['driver_allowance'];
    _totalKm = json['total_km'];
    _carFareId = json['car_fare_id'];
    _carFare = json['car_fare'];
    _odometerStart = json['odometer_start'];
    _odometerStop = json['odometer_stop'];
    _odometerTotal = json['odometer_total'];
    _extraKm = json['extra_km'];
    _extraMin = json['extra_min'];
    _localPackageId = json['local_package_id'];
    _packageCarId = json['package_car_id'];
    _driver = json['driver'] != null ? Driver.fromJson(json['driver']) : null;
  }
  int? _id;
  String? _bookingId;
  String? _pickupCity;
  String? _pickupCityId;
  String? _dropCity;
  String? _dropCityId;
  String? _pickupAddress;
  String? _dropAddress;
  String? _totalFare;
  String? _givenFare;
  String? _remainingFare;
  String? _toll;
  String? _driverFare;
  String? _gst;
  String? _createdAt;
  String? _bookingDate;
  String? _bookingTime;
  String? _carTypeId;
  String? _carType;
  String? _userId;
  String? _status;
  String? _driverId;
  String? _otp;
  String? _otp2;
  String? _passengerName;
  String? _phone;
  String? _bookingType;
  String? _noOfDays;
  String? _returnDate;
  String? _returnTime;
  String? _driverAllowance;
  String? _totalKm;
  String? _carFareId;
  String? _carFare;
  String? _odometerStart;
  String? _odometerStop;
  String? _odometerTotal;
  String? _extraKm;
  String? _extraMin;
  String? _localPackageId;
  String? _packageCarId;
  Driver? _driver;
  Booking copyWith({
    int? id,
    String? bookingId,
    String? pickupCity,
    String? pickupCityId,
    String? dropCity,
    String? dropCityId,
    String? pickupAddress,
    String? dropAddress,
    String? totalFare,
    String? givenFare,
    String? remainingFare,
    String? toll,
    String? driverFare,
    String? gst,
    String? createdAt,
    String? bookingDate,
    String? bookingTime,
    String? carTypeId,
    String? carType,
    String? userId,
    String? status,
    String? driverId,
    String? otp,
    String? otp2,
    String? passengerName,
    String? phone,
    String? bookingType,
    String? noOfDays,
    String? returnDate,
    String? returnTime,
    String? driverAllowance,
    String? totalKm,
    String? carFareId,
    String? carFare,
    String? odometerStart,
    String? odometerStop,
    String? odometerTotal,
    String? extraKm,
    String? extraMin,
    String? localPackageId,
    String? packageCarId,
    Driver? driver,
  }) =>
      Booking(
        id: id ?? _id,
        bookingId: bookingId ?? _bookingId,
        pickupCity: pickupCity ?? _pickupCity,
        pickupCityId: pickupCityId ?? _pickupCityId,
        dropCity: dropCity ?? _dropCity,
        dropCityId: dropCityId ?? _dropCityId,
        pickupAddress: pickupAddress ?? _pickupAddress,
        dropAddress: dropAddress ?? _dropAddress,
        totalFare: totalFare ?? _totalFare,
        givenFare: givenFare ?? _givenFare,
        remainingFare: remainingFare ?? _remainingFare,
        toll: toll ?? _toll,
        driverFare: driverFare ?? _driverFare,
        gst: gst ?? _gst,
        createdAt: createdAt ?? _createdAt,
        bookingDate: bookingDate ?? _bookingDate,
        bookingTime: bookingTime ?? _bookingTime,
        carTypeId: carTypeId ?? _carTypeId,
        carType: carType ?? _carType,
        userId: userId ?? _userId,
        status: status ?? _status,
        driverId: driverId ?? _driverId,
        otp: otp ?? _otp,
        otp2: otp2 ?? _otp2,
        passengerName: passengerName ?? _passengerName,
        phone: phone ?? _phone,
        bookingType: bookingType ?? _bookingType,
        noOfDays: noOfDays ?? _noOfDays,
        returnDate: returnDate ?? _returnDate,
        returnTime: returnTime ?? _returnTime,
        driverAllowance: driverAllowance ?? _driverAllowance,
        totalKm: totalKm ?? _totalKm,
        carFareId: carFareId ?? _carFareId,
        carFare: carFare ?? _carFare,
        odometerStart: odometerStart ?? _odometerStart,
        odometerStop: odometerStop ?? _odometerStop,
        odometerTotal: odometerTotal ?? _odometerTotal,
        extraKm: extraKm ?? _extraKm,
        extraMin: extraMin ?? _extraMin,
        localPackageId: localPackageId ?? _localPackageId,
        packageCarId: packageCarId ?? _packageCarId,
        driver: driver ?? _driver,
      );
  int? get id => _id;
  String? get bookingId => _bookingId;
  String? get pickupCity => _pickupCity;
  String? get pickupCityId => _pickupCityId;
  String? get dropCity => _dropCity;
  String? get dropCityId => _dropCityId;
  String? get pickupAddress => _pickupAddress;
  String? get dropAddress => _dropAddress;
  String? get totalFare => _totalFare;
  String? get givenFare => _givenFare;
  String? get remainingFare => _remainingFare;
  String? get toll => _toll;
  String? get driverFare => _driverFare;
  String? get gst => _gst;
  String? get createdAt => _createdAt;
  String? get bookingDate => _bookingDate;
  String? get bookingTime => _bookingTime;
  String? get carTypeId => _carTypeId;
  String? get carType => _carType;
  String? get userId => _userId;
  String? get status => _status;
  String? get driverId => _driverId;
  String? get otp => _otp;
  String? get otp2 => _otp2;
  String? get passengerName => _passengerName;
  String? get phone => _phone;
  String? get bookingType => _bookingType;
  String? get noOfDays => _noOfDays;
  String? get returnDate => _returnDate;
  String? get returnTime => _returnTime;
  String? get driverAllowance => _driverAllowance;
  String? get totalKm => _totalKm;
  String? get carFareId => _carFareId;
  String? get carFare => _carFare;
  String? get odometerStart => _odometerStart;
  String? get odometerStop => _odometerStop;
  String? get odometerTotal => _odometerTotal;
  String? get extraKm => _extraKm;
  String? get extraMin => _extraMin;
  String? get localPackageId => _localPackageId;
  String? get packageCarId => _packageCarId;
  Driver? get driver => _driver;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['booking_id'] = _bookingId;
    map['pickup_city'] = _pickupCity;
    map['pickup_city_id'] = _pickupCityId;
    map['drop_city'] = _dropCity;
    map['drop_city_id'] = _dropCityId;
    map['pickup_address'] = _pickupAddress;
    map['drop_address'] = _dropAddress;
    map['total_fare'] = _totalFare;
    map['given_fare'] = _givenFare;
    map['remaining_fare'] = _remainingFare;
    map['toll'] = _toll;
    map['driver_fare'] = _driverFare;
    map['gst'] = _gst;
    map['created_at'] = _createdAt;
    map['booking_date'] = _bookingDate;
    map['booking_time'] = _bookingTime;
    map['car_type_id'] = _carTypeId;
    map['car_type'] = _carType;
    map['user_id'] = _userId;
    map['status'] = _status;
    map['driver_id'] = _driverId;
    map['otp'] = _otp;
    map['otp2'] = _otp2;
    map['passenger_name'] = _passengerName;
    map['phone'] = _phone;
    map['booking_type'] = _bookingType;
    map['no_of_days'] = _noOfDays;
    map['return_date'] = _returnDate;
    map['return_time'] = _returnTime;
    map['driver_allowance'] = _driverAllowance;
    map['total_km'] = _totalKm;
    map['car_fare_id'] = _carFareId;
    map['car_fare'] = _carFare;
    map['odometer_start'] = _odometerStart;
    map['odometer_stop'] = _odometerStop;
    map['odometer_total'] = _odometerTotal;
    map['extra_km'] = _extraKm;
    map['extra_min'] = _extraMin;
    map['local_package_id'] = _localPackageId;
    map['package_car_id'] = _packageCarId;
    if (_driver != null) {
      map['driver'] = _driver?.toJson();
    }
    return map;
  }

  set driver(value) {
    _driver = value;
  }

  set packageCarId(value) {
    _packageCarId = value;
  }

  set localPackageId(value) {
    _localPackageId = value;
  }

  set extraMin(value) {
    _extraMin = value;
  }

  set extraKm(value) {
    _extraKm = value;
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

  set carFareId(value) {
    _carFareId = value;
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

  set noOfDays(value) {
    _noOfDays = value;
  }

  set bookingType(value) {
    _bookingType = value;
  }

  set phone(value) {
    _phone = value;
  }

  set passengerName(value) {
    _passengerName = value;
  }

  set otp2(value) {
    _otp2 = value;
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

  set carTypeId(value) {
    _carTypeId = value;
  }

  set bookingTime(value) {
    _bookingTime = value;
  }

  set bookingDate(value) {
    _bookingDate = value;
  }

  set createdAt(value) {
    _createdAt = value;
  }

  set gst(value) {
    _gst = value;
  }

  set driverFare(value) {
    _driverFare = value;
  }

  set toll(value) {
    _toll = value;
  }

  set remainingFare(value) {
    _remainingFare = value;
  }

  set givenFare(value) {
    _givenFare = value;
  }

  set totalFare(value) {
    _totalFare = value;
  }

  set dropAddress(value) {
    _dropAddress = value;
  }

  set pickupAddress(value) {
    _pickupAddress = value;
  }

  set dropCityId(value) {
    _dropCityId = value;
  }

  set dropCity(value) {
    _dropCity = value;
  }

  set pickupCityId(value) {
    _pickupCityId = value;
  }

  set pickupCity(value) {
    _pickupCity = value;
  }

  set bookingId(value) {
    _bookingId = value;
  }

  set id(value) {
    _id = value;
  }

  set carFare(value) {
    _carFare = value;
  }
}
