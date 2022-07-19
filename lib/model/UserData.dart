/// status : true
/// message : "User Already Registered"
/// user : {"id":5,"name":"Tausif","phone":"9409394242","email":null,"created_at":"2022-04-22 08:31:13","type":1}

class UserData {
  UserData({
    bool? status,
    String? message,
    User? user,
  }) {
    _status = status;
    _message = message;
    _user = user;
  }

  UserData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  bool? _status;
  String? _message;
  User? _user;
  UserData copyWith({
    bool? status,
    String? message,
    User? user,
  }) =>
      UserData(
        status: status ?? _status,
        message: message ?? _message,
        user: user ?? _user,
      );
  bool? get status => _status;
  String? get message => _message;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }
}

/// id : 5
/// name : "Tausif"
/// phone : "9409394242"
/// email : null
/// created_at : "2022-04-22 08:31:13"
/// type : 1

class User {
  User({
    int? id,
    dynamic name,
    dynamic phone,
    dynamic email,
    dynamic createdAt,
    dynamic type,
  }) {
    _id = id;
    _name = name;
    _phone = phone;
    _email = email;
    _createdAt = createdAt;
    _type = type;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _phone = json['phone'];
    _email = json['email'];
    _createdAt = json['created_at'];
    _type = json['type'];
  }
  int? _id;
  dynamic _name;
  dynamic _phone;
  dynamic _email;
  dynamic _createdAt;
  dynamic _type;
  User copyWith({
    int? id,
    dynamic name,
    dynamic phone,
    dynamic email,
    dynamic createdAt,
    dynamic type,
  }) =>
      User(
        id: id ?? _id,
        name: name ?? _name,
        phone: phone ?? _phone,
        email: email ?? _email,
        createdAt: createdAt ?? _createdAt,
        type: type ?? _type,
      );
  int? get id => _id;
  dynamic get name => _name;
  dynamic get phone => _phone;
  dynamic get email => _email;
  dynamic get createdAt => _createdAt;
  dynamic get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['phone'] = _phone;
    map['email'] = _email;
    map['created_at'] = _createdAt;
    map['type'] = _type;
    return map;
  }

  set type(value) {
    _type = value;
  }

  set createdAt(value) {
    _createdAt = value;
  }

  set email(value) {
    _email = value;
  }

  set phone(value) {
    _phone = value;
  }

  set name(value) {
    _name = value;
  }

  set id(value) {
    _id = value;
  }
}
