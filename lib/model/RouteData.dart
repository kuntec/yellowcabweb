/// status : true
/// message : "Routes Found"
/// routes : [{"id":3,"pickup_city":"Bharuch","drop_city":"Ahmedabad","pickup_id":5,"drop_id":4,"total_fare":"1200","driver_fare":"1000","toll":"100","gst":"5","car_type":4,"car_name":"SUV","created_at":"2022-03-28 16:15:45","car":{"id":4,"name":"SUV","image":null,"ac":null,"seat":null,"bags":null,"description":"Innova","created_at":"2022-03-28 12:35:13"}},{"id":5,"pickup_city":"Bharuch","drop_city":"Ahmedabad","pickup_id":5,"drop_id":4,"total_fare":"1500","driver_fare":"1200","toll":"100","gst":"5","car_type":5,"car_name":"Sedan","created_at":"2022-03-28 16:19:35","car":{"id":5,"name":"Sedan","image":null,"ac":null,"seat":null,"bags":null,"description":"Dezire","created_at":"2022-03-28 12:35:22"}}]

class RouteData {
  RouteData({
    bool? status,
    String? message,
    List<Routes>? routes,
  }) {
    _status = status;
    _message = message;
    _routes = routes;
  }

  RouteData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['routes'] != null) {
      _routes = [];
      json['routes'].forEach((v) {
        _routes?.add(Routes.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Routes>? _routes;
  RouteData copyWith({
    bool? status,
    String? message,
    List<Routes>? routes,
  }) =>
      RouteData(
        status: status ?? _status,
        message: message ?? _message,
        routes: routes ?? _routes,
      );
  bool? get status => _status;
  String? get message => _message;
  List<Routes>? get routes => _routes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_routes != null) {
      map['routes'] = _routes?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 3
/// pickup_city : "Bharuch"
/// drop_city : "Ahmedabad"
/// pickup_id : 5
/// drop_id : 4
/// total_fare : "1200"
/// driver_fare : "1000"
/// toll : "100"
/// gst : "5"
/// car_type : 4
/// car_name : "SUV"
/// created_at : "2022-03-28 16:15:45"
/// car : {"id":4,"name":"SUV","image":null,"ac":null,"seat":null,"bags":null,"description":"Innova","created_at":"2022-03-28 12:35:13"}

class Routes {
  Routes({
    int? id,
    String? pickupCity,
    String? dropCity,
    dynamic pickupId,
    dynamic dropId,
    String? totalFare,
    String? driverFare,
    String? toll,
    String? gst,
    dynamic carType,
    String? carName,
    String? createdAt,
    Car? car,
  }) {
    _id = id;
    _pickupCity = pickupCity;
    _dropCity = dropCity;
    _pickupId = pickupId;
    _dropId = dropId;
    _totalFare = totalFare;
    _driverFare = driverFare;
    _toll = toll;
    _gst = gst;
    _carType = carType;
    _carName = carName;
    _createdAt = createdAt;
    _car = car;
  }

  Routes.fromJson(dynamic json) {
    _id = json['id'];
    _pickupCity = json['pickup_city'];
    _dropCity = json['drop_city'];
    _pickupId = json['pickup_id'];
    _dropId = json['drop_id'];
    _totalFare = json['total_fare'];
    _driverFare = json['driver_fare'];
    _toll = json['toll'];
    _gst = json['gst'];
    _carType = json['car_type'];
    _carName = json['car_name'];
    _createdAt = json['created_at'];
    _car = json['car'] != null ? Car.fromJson(json['car']) : null;
  }
  int? _id;
  String? _pickupCity;
  String? _dropCity;
  dynamic _pickupId;
  dynamic _dropId;
  String? _totalFare;
  String? _driverFare;
  String? _toll;
  String? _gst;
  dynamic _carType;
  String? _carName;
  String? _createdAt;
  Car? _car;
  Routes copyWith({
    int? id,
    String? pickupCity,
    String? dropCity,
    dynamic pickupId,
    dynamic dropId,
    String? totalFare,
    String? driverFare,
    String? toll,
    String? gst,
    dynamic carType,
    String? carName,
    String? createdAt,
    Car? car,
  }) =>
      Routes(
        id: id ?? _id,
        pickupCity: pickupCity ?? _pickupCity,
        dropCity: dropCity ?? _dropCity,
        pickupId: pickupId ?? _pickupId,
        dropId: dropId ?? _dropId,
        totalFare: totalFare ?? _totalFare,
        driverFare: driverFare ?? _driverFare,
        toll: toll ?? _toll,
        gst: gst ?? _gst,
        carType: carType ?? _carType,
        carName: carName ?? _carName,
        createdAt: createdAt ?? _createdAt,
        car: car ?? _car,
      );
  int? get id => _id;
  String? get pickupCity => _pickupCity;
  String? get dropCity => _dropCity;
  dynamic get pickupId => _pickupId;
  dynamic get dropId => _dropId;
  String? get totalFare => _totalFare;
  String? get driverFare => _driverFare;
  String? get toll => _toll;
  String? get gst => _gst;
  dynamic get carType => _carType;
  String? get carName => _carName;
  String? get createdAt => _createdAt;
  Car? get car => _car;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['pickup_city'] = _pickupCity;
    map['drop_city'] = _dropCity;
    map['pickup_id'] = _pickupId;
    map['drop_id'] = _dropId;
    map['total_fare'] = _totalFare;
    map['driver_fare'] = _driverFare;
    map['toll'] = _toll;
    map['gst'] = _gst;
    map['car_type'] = _carType;
    map['car_name'] = _carName;
    map['created_at'] = _createdAt;
    if (_car != null) {
      map['car'] = _car?.toJson();
    }
    return map;
  }

  set car(value) {
    _car = value;
  }

  set createdAt(value) {
    _createdAt = value;
  }

  set carName(value) {
    _carName = value;
  }

  set carType(value) {
    _carType = value;
  }

  set gst(value) {
    _gst = value;
  }

  set toll(value) {
    _toll = value;
  }

  set driverFare(value) {
    _driverFare = value;
  }

  set totalFare(value) {
    _totalFare = value;
  }

  set dropId(value) {
    _dropId = value;
  }

  set pickupId(value) {
    _pickupId = value;
  }

  set dropCity(value) {
    _dropCity = value;
  }

  set pickupCity(value) {
    _pickupCity = value;
  }

  set id(value) {
    _id = value;
  }
}

/// id : 4
/// name : "SUV"
/// image : null
/// ac : null
/// seat : null
/// bags : null
/// description : "Innova"
/// created_at : "2022-03-28 12:35:13"

class Car {
  Car({
    int? id,
    String? name,
    dynamic image,
    dynamic ac,
    dynamic seat,
    dynamic bags,
    String? description,
    String? createdAt,
  }) {
    _id = id;
    _name = name;
    _image = image;
    _ac = ac;
    _seat = seat;
    _bags = bags;
    _description = description;
    _createdAt = createdAt;
  }

  Car.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _ac = json['ac'];
    _seat = json['seat'];
    _bags = json['bags'];
    _description = json['description'];
    _createdAt = json['created_at'];
  }
  int? _id;
  String? _name;
  dynamic _image;
  dynamic _ac;
  dynamic _seat;
  dynamic _bags;
  String? _description;
  String? _createdAt;
  Car copyWith({
    int? id,
    String? name,
    dynamic image,
    dynamic ac,
    dynamic seat,
    dynamic bags,
    String? description,
    String? createdAt,
  }) =>
      Car(
        id: id ?? _id,
        name: name ?? _name,
        image: image ?? _image,
        ac: ac ?? _ac,
        seat: seat ?? _seat,
        bags: bags ?? _bags,
        description: description ?? _description,
        createdAt: createdAt ?? _createdAt,
      );
  int? get id => _id;
  String? get name => _name;
  dynamic get image => _image;
  dynamic get ac => _ac;
  dynamic get seat => _seat;
  dynamic get bags => _bags;
  String? get description => _description;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['ac'] = _ac;
    map['seat'] = _seat;
    map['bags'] = _bags;
    map['description'] = _description;
    map['created_at'] = _createdAt;
    return map;
  }

  set createdAt(value) {
    _createdAt = value;
  }

  set description(value) {
    _description = value;
  }

  set bags(value) {
    _bags = value;
  }

  set seat(value) {
    _seat = value;
  }

  set ac(value) {
    _ac = value;
  }

  set image(value) {
    _image = value;
  }

  set name(value) {
    _name = value;
  }

  set id(value) {
    _id = value;
  }
}
