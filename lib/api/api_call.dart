import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yellowcabweb/api/api_resources.dart';
import 'package:yellowcabweb/api/http_call.dart';
import 'package:yellowcabweb/model/Booking.dart';
import 'package:yellowcabweb/model/BookingData.dart';
import 'package:yellowcabweb/model/CarFareData.dart';
import 'package:yellowcabweb/model/CarTypeData.dart';
import 'package:yellowcabweb/model/CityData.dart';
import 'package:yellowcabweb/model/LocalPackageData.dart';
import 'package:yellowcabweb/model/OnewayData.dart';
import 'package:yellowcabweb/model/RoundTripData.dart';
import 'package:yellowcabweb/model/UserData.dart';

class APICall {
  Future sendOTP(String url) async {
    Uri uri = Uri.parse(url);
    HttpCall call = HttpCall();
    http.Response response = await call.get(uri);
    //print("Response Body:  " + response.body);
//    return CityData.fromJson(jsonDecode(response.body));
  }

  Future<CityData> getCities() async {
    Uri url = Uri.parse(APIResources.GET_CITIES);
    HttpCall call = HttpCall();
    http.Response response = await call.get(url);
    //print("Response Body:  " + response.body);
    return CityData.fromJson(jsonDecode(response.body));
  }

  Future<CarTypeData> getCarTypes() async {
    Uri url = Uri.parse(APIResources.GET_CAR_TYPE);
    HttpCall call = HttpCall();
    http.Response response = await call.get(url);
    //print("Response Body:  " + response.body);
    return CarTypeData.fromJson(jsonDecode(response.body));
  }

  Future<CityData> getPickup() async {
    Uri url = Uri.parse(APIResources.GET_PICKUP);
    HttpCall call = HttpCall();
    http.Response response = await call.get(url);
    //print("Response Body:  " + response.body);
    return CityData.fromJson(jsonDecode(response.body));
  }

  Future<CityData> getDrop() async {
    Uri url = Uri.parse(APIResources.GET_DROP);
    HttpCall call = HttpCall();
    http.Response response = await call.get(url);
    //print("Response Body:  " + response.body);
    return CityData.fromJson(jsonDecode(response.body));
  }

  // Future<RouteData> getRoute(String pickupId, String dropId) async {
  //   Uri url = Uri.parse(APIResources.GET_ROUTE);
  //   var header = Map<String, String>();
  //   var params = Map<String, String>();
  //   params['pickup_id'] = pickupId;
  //   params['drop_id'] = dropId;
  //   HttpCall call = HttpCall();
  //   http.Response response = await call.post(url, header, params);
  //   print("Response Body: " + response.body);
  //   return RouteData.fromJson(jsonDecode(response.body));
  // }

  Future<OnewayData> getOneway(String pickupId, String dropId) async {
    Uri url = Uri.parse(APIResources.GET_ONEWAY);
    var header = Map<String, String>();
    var params = Map<String, String>();
    params['pickup_id'] = pickupId;
    params['drop_id'] = dropId;
    HttpCall call = HttpCall();
    http.Response response = await call.post(url, header, params);
    //print("Response Body: " + response.body);
    return OnewayData.fromJson(jsonDecode(response.body));
  }

  Future<UserData> addUser(String name, String phone) async {
    Uri url = Uri.parse(APIResources.ADD_USER);
    var header = Map<String, String>();
    var params = Map<String, String>();
    params['name'] = name;
    params['phone'] = phone;
    params['type'] = "1";
    HttpCall call = HttpCall();
    http.Response response = await call.post(url, header, params);
    print("Response Body: " + response.body);
    return UserData.fromJson(jsonDecode(response.body));
  }

  Future<BookingData> addBooking(Booking booking) async {
    Uri url = Uri.parse(APIResources.ADD_BOOKING);
    var header = Map<String, String>();
    var params = Map<String, String>();
    params['pickup_city'] = booking.pickupCity!;
    params['pickup_city_id'] = booking.pickupCityId!.toString();
    params['drop_city'] = booking.dropCity!;
    params['drop_city_id'] = booking.dropCityId!.toString();
    params['pickup_address'] = booking.pickupAddress!;
    params['drop_address'] = booking.dropAddress!;

    params['total_fare'] = booking.totalFare!;
    params['given_fare'] = booking.givenFare!;
    params['remaining_fare'] = booking.remainingFare!;
    params['driver_fare'] = booking.driverFare!;
    params['toll'] = booking.toll!;
    params['gst'] = booking.gst!;

    params['booking_date'] = booking.bookingDate!;
    params['booking_time'] = booking.bookingTime!;
    params['car_type_id'] = booking.carTypeId!.toString();
    params['car_type'] = booking.carType!;
    params['user_id'] = booking.userId!.toString();
    params['passenger_name'] = booking.passengerName!;
    params['phone'] = booking.phone!;

    params['booking_type'] = booking.bookingType.toString();
    params['no_of_days'] = booking.noOfDays.toString();
    params['return_date'] = booking.returnDate.toString();
    params['return_time'] = booking.returnTime.toString();

    params['driver_allowance'] = booking.driverAllowance.toString();
    params['total_km'] = booking.totalKm.toString();
    params['car_fare_id'] = booking.carFareId.toString();
    params['odometer_start'] = booking.odometerStart.toString();
    params['odometer_stop'] = booking.odometerStop.toString();
    params['odometer_total'] = booking.odometerTotal.toString();
    params['extra_km'] = booking.extraKm.toString();
    params['extra_min'] = booking.extraMin.toString();

    params['local_package_id'] = booking.localPackageId.toString();
    params['package_car_id'] = booking.packageCarId.toString();

    HttpCall call = HttpCall();
    http.Response response = await call.post(url, header, params);
    //print("Response Body: " + response.body);
    return BookingData.fromJson(jsonDecode(response.body));
  }

  Future<BookingData> cancelBooking(Booking booking) async {
    Uri url = Uri.parse(APIResources.CANCEL_BOOKING);
    var header = Map<String, String>();
    var params = Map<String, String>();
    params['id'] = booking.id.toString();
    HttpCall call = HttpCall();
    http.Response response = await call.post(url, header, params);
    //print("Response Body: " + response.body);
    return BookingData.fromJson(jsonDecode(response.body));
  }

  Future<BookingData> myBookings(String userId) async {
    BookingData bookingData = BookingData();
    Uri url = Uri.parse(APIResources.MY_BOOKINGS);
    var header = Map<String, String>();
    var params = Map<String, String>();

    params['user_id'] = userId;

    HttpCall call = HttpCall();
    http.Response response = await call.post(url, header, params);
    print("Response Body: " + response.body);
    try {
      //BookingDemoData.fromJson(jsonDecode(response.body));
      // print('reached');
      bookingData = BookingData.fromJson(jsonDecode(response.body));
      // print('reached1');
    } on Exception catch (_) {
      // print('never reached');
    }
    return bookingData;
  }

  Future<RoundTripData> addRoundTrip(Roundtrip roundtrip) async {
    Uri url = Uri.parse(APIResources.ADD_BOOKING);
    var header = Map<String, String>();
    var params = Map<String, String>();
    params['pickup_city'] = roundtrip.pickupCity!;
    params['drop_city'] = roundtrip.dropCity!;
    params['pickup_address'] = roundtrip.pickupAddress!;
    params['no_of_days'] = roundtrip.noOfDays!;
    params['estimated_fare'] = roundtrip.estimatedFare!;
    params['gst'] = roundtrip.gst!;
    params['driver_allowance'] = roundtrip.driverAllowance!;
    params['total_km'] = roundtrip.totalKm!;
    params['pickup_date'] = roundtrip.pickupDate!;
    params['pickup_time'] = roundtrip.pickupTime!;
    params['return_date'] = roundtrip.returnDate!;
    params['return_time'] = roundtrip.returnTime!;
    params['car_fare_id'] = roundtrip.carFareId!.toString();
    params['car_type'] = roundtrip.carType!;
    params['user_id'] = roundtrip.userId!.toString();
    params['passenger_name'] = roundtrip.passengerName!;
    params['phone'] = roundtrip.phone!;

    HttpCall call = HttpCall();
    http.Response response = await call.post(url, header, params);
    //print("Response Body: " + response.body);
    return RoundTripData.fromJson(jsonDecode(response.body));
  }

  Future<CarFareData> getCarFare(String carTypeId) async {
    Uri url = Uri.parse(APIResources.GET_CARFARE);
    var header = Map<String, String>();
    var params = Map<String, String>();

    params['car_type_id'] = carTypeId;

    HttpCall call = HttpCall();
    http.Response response = await call.post(url, header, params);
    //print("Response Body: " + response.body);
    return CarFareData.fromJson(jsonDecode(response.body));
  }

  Future<LocalPackageData> getLocalPackage(String cityId) async {
    Uri url = Uri.parse(APIResources.GET_LOCAL_PACKAGE);
    var header = Map<String, String>();
    var params = Map<String, String>();

    params['city_id'] = cityId;

    HttpCall call = HttpCall();
    http.Response response = await call.post(url, header, params);
    //print("Response Body: " + response.body);
    return LocalPackageData.fromJson(jsonDecode(response.body));
  }
}
