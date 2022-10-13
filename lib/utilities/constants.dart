import 'package:flutter/material.dart';


//final deviceOrientation = MediaQuery.of(context).orientation;

// Texto da Temperatua
const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  //fontSize: 100.0,
  fontSize: 80.0,
);

const kTempTextStyleLandscape = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 40.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  //fontSize: 60.0,
  fontSize: 40.0,
);

const kMessageTextStyleLandscape = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 30.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  //fontSize: 100.0,
  fontSize: 90.0,
);

const kConditionTextStyleLandscape = TextStyle(
  fontSize: 70.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
