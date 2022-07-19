import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const kAppColor = Color(0xffef225b);

//const kBaseColor = Color(0xff3476db);
const kBaseColor = Color(0xffFFDE59);

const kGreyBorder = Color(0xff8e8a8a);

const kHintColor = Color(0xff535151);

const kBackgroundPageColor = Color(0xfff4f7f2);

const kMargin = 10.0;

const k20Margin = 20.0;

const kProfileSize = 180.0;

const kPhotoSize = 110.0;

const startColor = Color(0xff000000);
const hostEndColor = Color(0xff197AFF);
const friendEndColor = Color(0xff00D7FF);
const tournamentEndColor = Color(0xff00FF93);
const eventEndColor = Color(0xff9001DB);
const offerEndColor = Color(0xffEB0808);
const kBlack = Color(0xff000000);

const kInternet = "No Internet Connection, Please connect to Internet";

const kRazorPayKey = 'rzp_live_rFCIdCSC0uZN4i';

//const kRazorPayKey = 'rzp_test_D4i0MCiMUZyi4W';

const kParking =
    "\u2022 Parking and Airport Entry Charges (as applicable) - Pay Directly to Driver";

const kSedanHatchback =
    "\u2022 Sedan and Hatchback maximum 3 guests and in SUV maximum 5 person will be allowed";

const kMask =
    "\u2022 Driver will wear mask during trips. Same is also requested from Guests";
const kSanitise = "\u2022 Cabs are sanitised regularly";

const kToll = "\u2022 Toll, Parking, Inter-State Tax & Permit Charges Extra.";

const kRoundTrip =
    "\u2022 Please pay above charges directly to driver & collect receipts";

const kTitleLargeWhite = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 24.0,
  fontFamily: 'Roboto',
);

const kTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
  fontWeight: FontWeight.w400,
  fontFamily: "Myriad Pro",
  fontStyle: FontStyle.normal,
);

const kHeadingText = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
  fontFamily: "Myriad Pro",
);

const kLabelText = TextStyle(
  color: Colors.grey,
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
  fontFamily: "Myriad Pro",
);

const kValueText = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.normal,
  fontSize: 16.0,
  fontFamily: "Myriad Pro",
);

const kTextNormalWhite = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 18.0,
);

const kTitleNameTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 22.0,
  fontFamily: 'Myriad Pro',
);

const kNormalTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w600,
  fontSize: 18.0,
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(color: kHintColor),
  filled: true,
  fillColor: Colors.white,
// floatingLabelBehavior: FloatingLabelBehavior.always,
//  labelText: 'Value',
  labelStyle: TextStyle(color: kBaseColor),
  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(40.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kGreyBorder, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(40.0)),
    gapPadding: 10,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kGreyBorder, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(40.0)),
    gapPadding: 10,
  ),
);

const underLineTextFieldDecoration = InputDecoration(
  labelText: '',
  labelStyle: TextStyle(color: Colors.black38),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: kBaseColor),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: kBaseColor),
  ),
  border: UnderlineInputBorder(),
);

const textFieldDecoration = InputDecoration(
  labelText: 'Passenger Name',
  labelStyle: TextStyle(color: Colors.black38),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kBaseColor),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kBaseColor),
  ),
  border: OutlineInputBorder(),
);

final kBoxItem = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(5.0),
  border: Border.all(
    color: Colors.black,
    width: 0,
  ),
  boxShadow: const [
    BoxShadow(
      color: Colors.black12,
      offset: Offset(0, 2),
      blurRadius: 6.0,
    )
  ],
);

final kServiceBoxItem = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: const [
    BoxShadow(
      color: Colors.black12,
      offset: Offset(0, 2),
      blurRadius: 6.0,
    )
  ],
);

void showToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    //gravity: ToastGravity.CENTER,
    backgroundColor: kBaseColor,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_LONG,
  );
}
