/// status : true
/// message : "Local Packages Found"
/// localpackage : [{"id":2,"package_name":"100 Km","start_price":"2500","start_city_id":null,"start_city_name":null,"general":1,"packagecar":[{"id":4,"local_package_id":2,"car_type_id":2,"fare":"2500","extra_km":"11","extra_min":"2","car":{"id":2,"name":"Hatchback","image":null,"ac":"0","seat":"5","bags":"1","description":"Alto, Swift,  indica, waganor ","created_at":"2022-03-28 12:34:57"}},{"id":5,"local_package_id":2,"car_type_id":4,"fare":"3000","extra_km":"18","extra_min":"2.5","car":{"id":4,"name":"SUV","image":null,"ac":"1","seat":"6","bags":"4","description":"Innova","created_at":"2022-03-28 12:35:13"}}]}]

class LocalPackageData {
  LocalPackageData({
    bool? status,
    String? message,
    List<Localpackage>? localpackage,
  }) {
    _status = status;
    _message = message;
    _localpackage = localpackage;
  }

  LocalPackageData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['localpackage'] != null) {
      _localpackage = [];
      json['localpackage'].forEach((v) {
        _localpackage?.add(Localpackage.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Localpackage>? _localpackage;
  LocalPackageData copyWith({
    bool? status,
    String? message,
    List<Localpackage>? localpackage,
  }) =>
      LocalPackageData(
        status: status ?? _status,
        message: message ?? _message,
        localpackage: localpackage ?? _localpackage,
      );
  bool? get status => _status;
  String? get message => _message;
  List<Localpackage>? get localpackage => _localpackage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_localpackage != null) {
      map['localpackage'] = _localpackage?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 2
/// package_name : "100 Km"
/// start_price : "2500"
/// start_city_id : null
/// start_city_name : null
/// general : 1
/// packagecar : [{"id":4,"local_package_id":2,"car_type_id":2,"fare":"2500","extra_km":"11","extra_min":"2","car":{"id":2,"name":"Hatchback","image":null,"ac":"0","seat":"5","bags":"1","description":"Alto, Swift,  indica, waganor ","created_at":"2022-03-28 12:34:57"}},{"id":5,"local_package_id":2,"car_type_id":4,"fare":"3000","extra_km":"18","extra_min":"2.5","car":{"id":4,"name":"SUV","image":null,"ac":"1","seat":"6","bags":"4","description":"Innova","created_at":"2022-03-28 12:35:13"}}]

class Localpackage {
  Localpackage({
    int? id,
    String? packageName,
    String? startPrice,
    dynamic startCityId,
    dynamic startCityName,
    dynamic general,
    List<Packagecar>? packagecar,
  }) {
    _id = id;
    _packageName = packageName;
    _startPrice = startPrice;
    _startCityId = startCityId;
    _startCityName = startCityName;
    _general = general;
    _packagecar = packagecar;
  }

  Localpackage.fromJson(dynamic json) {
    _id = json['id'];
    _packageName = json['package_name'];
    _startPrice = json['start_price'];
    _startCityId = json['start_city_id'];
    _startCityName = json['start_city_name'];
    _general = json['general'];
    if (json['packagecar'] != null) {
      _packagecar = [];
      json['packagecar'].forEach((v) {
        _packagecar?.add(Packagecar.fromJson(v));
      });
    }
  }
  int? _id;
  String? _packageName;
  String? _startPrice;
  dynamic _startCityId;
  dynamic _startCityName;
  dynamic _general;
  List<Packagecar>? _packagecar;
  Localpackage copyWith({
    int? id,
    String? packageName,
    String? startPrice,
    dynamic startCityId,
    dynamic startCityName,
    dynamic general,
    List<Packagecar>? packagecar,
  }) =>
      Localpackage(
        id: id ?? _id,
        packageName: packageName ?? _packageName,
        startPrice: startPrice ?? _startPrice,
        startCityId: startCityId ?? _startCityId,
        startCityName: startCityName ?? _startCityName,
        general: general ?? _general,
        packagecar: packagecar ?? _packagecar,
      );
  int? get id => _id;
  String? get packageName => _packageName;
  String? get startPrice => _startPrice;
  dynamic get startCityId => _startCityId;
  dynamic get startCityName => _startCityName;
  dynamic get general => _general;
  List<Packagecar>? get packagecar => _packagecar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['package_name'] = _packageName;
    map['start_price'] = _startPrice;
    map['start_city_id'] = _startCityId;
    map['start_city_name'] = _startCityName;
    map['general'] = _general;
    if (_packagecar != null) {
      map['packagecar'] = _packagecar?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 4
/// local_package_id : 2
/// car_type_id : 2
/// fare : "2500"
/// extra_km : "11"
/// extra_min : "2"
/// car : {"id":2,"name":"Hatchback","image":null,"ac":"0","seat":"5","bags":"1","description":"Alto, Swift,  indica, waganor ","created_at":"2022-03-28 12:34:57"}

class Packagecar {
  Packagecar({
    int? id,
    dynamic localPackageId,
    dynamic carTypeId,
    String? fare,
    String? extraKm,
    String? extraMin,
    Car? car,
  }) {
    _id = id;
    _localPackageId = localPackageId;
    _carTypeId = carTypeId;
    _fare = fare;
    _extraKm = extraKm;
    _extraMin = extraMin;
    _car = car;
  }

  Packagecar.fromJson(dynamic json) {
    _id = json['id'];
    _localPackageId = json['local_package_id'];
    _carTypeId = json['car_type_id'];
    _fare = json['fare'];
    _extraKm = json['extra_km'];
    _extraMin = json['extra_min'];
    _car = json['car'] != null ? Car.fromJson(json['car']) : null;
  }
  int? _id;
  dynamic _localPackageId;
  dynamic _carTypeId;
  String? _fare;
  String? _extraKm;
  String? _extraMin;
  Car? _car;
  Packagecar copyWith({
    int? id,
    dynamic localPackageId,
    dynamic carTypeId,
    String? fare,
    String? extraKm,
    String? extraMin,
    Car? car,
  }) =>
      Packagecar(
        id: id ?? _id,
        localPackageId: localPackageId ?? _localPackageId,
        carTypeId: carTypeId ?? _carTypeId,
        fare: fare ?? _fare,
        extraKm: extraKm ?? _extraKm,
        extraMin: extraMin ?? _extraMin,
        car: car ?? _car,
      );
  int? get id => _id;
  dynamic get localPackageId => _localPackageId;
  dynamic get carTypeId => _carTypeId;
  String? get fare => _fare;
  String? get extraKm => _extraKm;
  String? get extraMin => _extraMin;
  Car? get car => _car;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['local_package_id'] = _localPackageId;
    map['car_type_id'] = _carTypeId;
    map['fare'] = _fare;
    map['extra_km'] = _extraKm;
    map['extra_min'] = _extraMin;
    if (_car != null) {
      map['car'] = _car?.toJson();
    }
    return map;
  }
}

/// id : 2
/// name : "Hatchback"
/// image : null
/// ac : "0"
/// seat : "5"
/// bags : "1"
/// description : "Alto, Swift,  indica, waganor "
/// created_at : "2022-03-28 12:34:57"

class Car {
  Car({
    int? id,
    String? name,
    dynamic image,
    String? ac,
    String? seat,
    String? bags,
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
  String? _ac;
  String? _seat;
  String? _bags;
  String? _description;
  String? _createdAt;
  Car copyWith({
    int? id,
    String? name,
    dynamic image,
    String? ac,
    String? seat,
    String? bags,
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
  String? get ac => _ac;
  String? get seat => _seat;
  String? get bags => _bags;
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
}
