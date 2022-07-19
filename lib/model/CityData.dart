/// status : true
/// message : "Cities Found"
/// cities : [{"id":3,"name":"Vadodara","type":1,"created_at":"2022-03-28 10:26:24"},{"id":4,"name":"Ahmedabad","type":0,"created_at":"2022-03-28 10:26:32"},{"id":5,"name":"Bharuch","type":1,"created_at":"2022-03-28 10:28:10"},{"id":6,"name":"Surat","type":1,"created_at":"2022-03-28 10:28:16"},{"id":9,"name":"Ahmedabad Airport","type":0,"created_at":"2022-03-28 16:20:28"},{"id":10,"name":"Vadodara Airport","type":0,"created_at":"2022-03-28 16:20:36"}]

class CityData {
  CityData({
    bool? status,
    String? message,
    List<Cities>? cities,
  }) {
    _status = status;
    _message = message;
    _cities = cities;
  }

  CityData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['cities'] != null) {
      _cities = [];
      json['cities'].forEach((v) {
        _cities?.add(Cities.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Cities>? _cities;
  CityData copyWith({
    bool? status,
    String? message,
    List<Cities>? cities,
  }) =>
      CityData(
        status: status ?? _status,
        message: message ?? _message,
        cities: cities ?? _cities,
      );
  bool? get status => _status;
  String? get message => _message;
  List<Cities>? get cities => _cities;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_cities != null) {
      map['cities'] = _cities?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 3
/// name : "Vadodara"
/// type : 1
/// created_at : "2022-03-28 10:26:24"

class Cities {
  Cities({
    int? id,
    dynamic name,
    dynamic type,
    dynamic createdAt,
  }) {
    _id = id;
    _name = name;
    _type = type;
    _createdAt = createdAt;
  }

  Cities.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _type = json['type'];
    _createdAt = json['created_at'];
  }
  int? _id;
  dynamic _name;
  dynamic _type;
  dynamic _createdAt;
  Cities copyWith({
    int? id,
    dynamic name,
    dynamic type,
    dynamic createdAt,
  }) =>
      Cities(
        id: id ?? _id,
        name: name ?? _name,
        type: type ?? _type,
        createdAt: createdAt ?? _createdAt,
      );
  int? get id => _id;
  dynamic get name => _name;
  dynamic get type => _type;
  dynamic get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['type'] = _type;
    map['created_at'] = _createdAt;
    return map;
  }

  set createdAt(value) {
    _createdAt = value;
  }

  set type(value) {
    _type = value;
  }

  set name(value) {
    _name = value;
  }

  set id(value) {
    _id = value;
  }
}
