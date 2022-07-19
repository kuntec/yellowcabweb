

import 'package:yellowcabweb/model/Booking.dart';

class BookingData {
  BookingData({
    bool? status,
    String? message,
    Booking? booking,
    List<Booking>? bookings,
  }) {
    _status = status;
    _message = message;
    _booking = booking;
    _bookings = bookings;
  }

  BookingData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _booking =
        json['booking'] != null ? Booking.fromJson(json['booking']) : null;
    if (json['bookings'] != null) {
      _bookings = [];
      json['bookings'].forEach((v) {
        _bookings?.add(Booking.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  Booking? _booking;
  List<Booking>? _bookings;
  BookingData copyWith({
    bool? status,
    String? message,
    Booking? booking,
    List<Booking>? bookings,
  }) =>
      BookingData(
        status: status ?? _status,
        message: message ?? _message,
        booking: booking ?? _booking,
        bookings: bookings ?? _bookings,
      );
  bool? get status => _status;
  String? get message => _message;
  Booking? get booking => _booking;
  List<Booking>? get bookings => _bookings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_booking != null) {
      map['booking'] = _booking?.toJson();
    }
    if (_bookings != null) {
      map['bookings'] = _bookings?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
