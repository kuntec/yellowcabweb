class Carfare {
  Carfare({
    int? id,
    dynamic carTypeId,
    dynamic name,
    dynamic fare,
  }) {
    _id = id;
    _carTypeId = carTypeId;
    _name = name;
    _fare = fare;
  }

  Carfare.fromJson(dynamic json) {
    _id = json['id'];
    _carTypeId = json['car_type_id'];
    _name = json['name'];
    _fare = json['fare'];
  }
  int? _id;
  dynamic _carTypeId;
  dynamic _name;
  dynamic _fare;
  Carfare copyWith({
    int? id,
    dynamic carTypeId,
    dynamic name,
    dynamic fare,
  }) =>
      Carfare(
        id: id ?? _id,
        carTypeId: carTypeId ?? _carTypeId,
        name: name ?? _name,
        fare: fare ?? _fare,
      );
  int? get id => _id;
  dynamic get carTypeId => _carTypeId;
  dynamic get name => _name;
  dynamic get fare => _fare;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['car_type_id'] = _carTypeId;
    map['name'] = _name;
    map['fare'] = _fare;
    return map;
  }
}
