/// status : true
/// message : "Routes Found"
/// oneway : [{"id":44,"pickup_city":"Vadodara","pickup_id":"3","drop_city":"SANAND","drop_id":"55","hatchback":"2399","sedan":"2499","suv":"2999","created_at":"0000-00-00 00:00:00"}]

class OnewayData {
  OnewayData({
    bool? status,
    String? message,
    List<Oneway>? oneway,
  }) {
    _status = status;
    _message = message;
    _oneway = oneway;
  }

  OnewayData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['oneway'] != null) {
      _oneway = [];
      json['oneway'].forEach((v) {
        _oneway?.add(Oneway.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Oneway>? _oneway;
  OnewayData copyWith({
    bool? status,
    String? message,
    List<Oneway>? oneway,
  }) =>
      OnewayData(
        status: status ?? _status,
        message: message ?? _message,
        oneway: oneway ?? _oneway,
      );
  bool? get status => _status;
  String? get message => _message;
  List<Oneway>? get oneway => _oneway;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_oneway != null) {
      map['oneway'] = _oneway?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 44
/// pickup_city : "Vadodara"
/// pickup_id : "3"
/// drop_city : "SANAND"
/// drop_id : "55"
/// hatchback : "2399"
/// sedan : "2499"
/// suv : "2999"
/// created_at : "0000-00-00 00:00:00"

class Oneway {
  Oneway({
    int? id,
    String? pickupCity,
    String? pickupId,
    String? dropCity,
    String? dropId,
    String? hatchback,
    String? sedan,
    String? suv,
    String? toll,
    String? createdAt,
  }) {
    _id = id;
    _pickupCity = pickupCity;
    _pickupId = pickupId;
    _dropCity = dropCity;
    _dropId = dropId;
    _hatchback = hatchback;
    _sedan = sedan;
    _suv = suv;
    _toll = toll;
    _createdAt = createdAt;
  }

  Oneway.fromJson(dynamic json) {
    _id = json['id'];
    _pickupCity = json['pickup_city'];
    _pickupId = json['pickup_id'];
    _dropCity = json['drop_city'];
    _dropId = json['drop_id'];
    _hatchback = json['hatchback'];
    _sedan = json['sedan'];
    _suv = json['suv'];
    _toll = json['toll'];
    _createdAt = json['created_at'];
  }
  int? _id;
  String? _pickupCity;
  String? _pickupId;
  String? _dropCity;
  String? _dropId;
  String? _hatchback;
  String? _sedan;
  String? _suv;
  String? _toll;
  String? _createdAt;
  Oneway copyWith({
    int? id,
    String? pickupCity,
    String? pickupId,
    String? dropCity,
    String? dropId,
    String? hatchback,
    String? sedan,
    String? suv,
    String? toll,
    String? createdAt,
  }) =>
      Oneway(
        id: id ?? _id,
        pickupCity: pickupCity ?? _pickupCity,
        pickupId: pickupId ?? _pickupId,
        dropCity: dropCity ?? _dropCity,
        dropId: dropId ?? _dropId,
        hatchback: hatchback ?? _hatchback,
        sedan: sedan ?? _sedan,
        suv: suv ?? _suv,
        toll: toll ?? _toll,
        createdAt: createdAt ?? _createdAt,
      );
  int? get id => _id;
  String? get pickupCity => _pickupCity;
  String? get pickupId => _pickupId;
  String? get dropCity => _dropCity;
  String? get dropId => _dropId;
  String? get hatchback => _hatchback;
  String? get sedan => _sedan;
  String? get suv => _suv;
  String? get toll => _toll;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['pickup_city'] = _pickupCity;
    map['pickup_id'] = _pickupId;
    map['drop_city'] = _dropCity;
    map['drop_id'] = _dropId;
    map['hatchback'] = _hatchback;
    map['sedan'] = _sedan;
    map['suv'] = _suv;
    map['toll'] = _toll;
    map['created_at'] = _createdAt;
    return map;
  }
}
