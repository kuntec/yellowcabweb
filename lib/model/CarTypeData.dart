/// status : true
/// message : "Car Type Found successfully"
/// cartype : [{"id":2,"name":"Hatchback","image":null,"ac":"0","seat":"3","bags":"1","description":"Alto, Swift,  indica, waganor ","created_at":"2022-03-28 12:34:57"},{"id":4,"name":"SUV","image":null,"ac":"1","seat":"5","bags":"4","description":"Innova / Ertica / Marrazo","created_at":"2022-03-28 12:35:13"},{"id":5,"name":"Sedan","image":null,"ac":"0","seat":"3","bags":"2","description":"Dezire / Xcent / Etios","created_at":"2022-03-28 12:35:22"}]

class CarTypeData {
  CarTypeData({
    bool? status,
    String? message,
    List<Cartype>? cartype,
  }) {
    _status = status;
    _message = message;
    _cartype = cartype;
  }

  CarTypeData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['cartype'] != null) {
      _cartype = [];
      json['cartype'].forEach((v) {
        _cartype?.add(Cartype.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Cartype>? _cartype;
  CarTypeData copyWith({
    bool? status,
    String? message,
    List<Cartype>? cartype,
  }) =>
      CarTypeData(
        status: status ?? _status,
        message: message ?? _message,
        cartype: cartype ?? _cartype,
      );
  bool? get status => _status;
  String? get message => _message;
  List<Cartype>? get cartype => _cartype;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_cartype != null) {
      map['cartype'] = _cartype?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 2
/// name : "Hatchback"
/// image : null
/// ac : "0"
/// seat : "3"
/// bags : "1"
/// description : "Alto, Swift,  indica, waganor "
/// created_at : "2022-03-28 12:34:57"

class Cartype {
  Cartype({
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

  Cartype.fromJson(dynamic json) {
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
  Cartype copyWith({
    int? id,
    String? name,
    dynamic image,
    String? ac,
    String? seat,
    String? bags,
    String? description,
    String? createdAt,
  }) =>
      Cartype(
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
