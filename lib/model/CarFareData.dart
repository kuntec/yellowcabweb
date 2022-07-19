import 'package:yellowcabweb/model/CarFare.dart';

/// status : true
/// message : "Car Fare Found successfully"
/// carfare : [{"id":1,"car_type_id":1,"name":"any","fare":"10.5"}]

class CarFareData {
  CarFareData({
    bool? status,
    String? message,
    List<Carfare>? carfare,
  }) {
    _status = status;
    _message = message;
    _carfare = carfare;
  }

  CarFareData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['carfare'] != null) {
      _carfare = [];
      json['carfare'].forEach((v) {
        _carfare?.add(Carfare.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Carfare>? _carfare;
  CarFareData copyWith({
    bool? status,
    String? message,
    List<Carfare>? carfare,
  }) =>
      CarFareData(
        status: status ?? _status,
        message: message ?? _message,
        carfare: carfare ?? _carfare,
      );
  bool? get status => _status;
  String? get message => _message;
  List<Carfare>? get carfare => _carfare;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_carfare != null) {
      map['carfare'] = _carfare?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
