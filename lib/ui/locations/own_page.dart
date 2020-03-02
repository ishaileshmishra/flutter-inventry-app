
import 'package:flutter/material.dart';

class OwnPage extends StatefulWidget {
  @override
  _OwnPageState createState() => _OwnPageState();
}

class _OwnPageState extends State<OwnPage> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: <Widget>[

          Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150)
                )
            ),

            child: Container(
              margin: EdgeInsets.all(40),
              child: Column(

                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'EMBREDDING',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'STICHING',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'POLISH',
                    ),
                  ),


                ],
              ),
            ),

          )

        ],
      ),
    );
  }
}
