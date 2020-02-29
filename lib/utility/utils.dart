import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle displaySmall(BuildContext context) {
  return Theme.of(context).textTheme.subtitle.copyWith(fontSize: 14.0);
}

TextStyle displayMedium(BuildContext context) {
  return Theme.of(context).textTheme.title.copyWith(fontSize: 18.0);
}

TextStyle displayLarge(BuildContext context) {
  return Theme.of(context).textTheme.title.copyWith(fontSize: 22.0);
}

TextStyle displayXL(BuildContext context) {
  return Theme.of(context).textTheme.title.copyWith(fontSize: 30.0, letterSpacing: 2.0);
}

TextStyle displayXLGrey(BuildContext context) {
  return Theme.of(context).textTheme.title.copyWith(fontSize: 30.0, letterSpacing: 2.0, color: Colors.grey[700]);
}

Widget stackWithLogo() {

  return Container(
    margin: EdgeInsets.only(left: 35, top: 50),

    child: Stack(
      children: <Widget>[

        Container(
          margin: EdgeInsets.only(left: 80),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.green),
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.location_on,
            size: 50,
            color: Colors.white,
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.red),
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.home,
            size: 50,
            color: Colors.white,
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 50, top: 35),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.teal),
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.business,
            size: 50,
            color: Colors.white,
          ),
        ),

      ],
    ),
  );
}


TextFormField textFormField(){
  return TextFormField(
    decoration: const InputDecoration(
      labelText: 'Email',
    ),
  );
}
