/// status : true
/// message : "Bookings Found successfully"
/// driver : {"id":1,"name":"Saliim Saiyed","number":"+91 7567286401","created_at":"2022-04-22 18:01:31"}

class DriverData {
  DriverData({
    bool? status,
    String? message,
    Driver? driver,
  }) {
    _status = status;
    _message = message;
    _driver = driver;
  }

  DriverData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _driver = json['driver'] != null ? Driver.fromJson(json['driver']) : null;
  }
  bool? _status;
  String? _message;
  Driver? _driver;
  DriverData copyWith({
    bool? status,
    String? message,
    Driver? driver,
  }) =>
      DriverData(
        status: status ?? _status,
        message: message ?? _message,
        driver: driver ?? _driver,
      );
  bool? get status => _status;
  String? get message => _message;
  Driver? get driver => _driver;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_driver != null) {
      map['driver'] = _driver?.toJson();
    }
    return map;
  }
}

class Driver {
  Driver({
    int? id,
    String? name,
    String? number,
    String? createdAt,
    dynamic outstanding,
  }) {
    _id = id;
    _name = name;
    _number = number;
    _createdAt = createdAt;
    _outstanding = outstanding;
  }

  Driver.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _number = json['number'];
    _createdAt = json['created_at'];
    _outstanding = json['outstanding'];
  }
  int? _id;
  String? _name;
  String? _number;
  String? _createdAt;
  dynamic _outstanding;
  Driver copyWith({
    int? id,
    String? name,
    String? number,
    String? createdAt,
    dynamic outstanding,
  }) =>
      Driver(
        id: id ?? _id,
        name: name ?? _name,
        number: number ?? _number,
        createdAt: createdAt ?? _createdAt,
        outstanding: outstanding ?? _outstanding,
      );
  int? get id => _id;
  String? get name => _name;
  String? get number => _number;
  String? get createdAt => _createdAt;
  dynamic get outstanding => _outstanding;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['number'] = _number;
    map['created_at'] = _createdAt;
    map['outstanding'] = _outstanding;
    return map;
  }
}
