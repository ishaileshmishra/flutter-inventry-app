import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_inventry/utility/utils.dart';
import 'package:custom_switch/custom_switch.dart';

class MiraroadPage extends StatefulWidget {
  @override
  _MiraroadPageState createState() => _MiraroadPageState();
}

class _MiraroadPageState extends State<MiraroadPage> {
  @override
  Widget build(BuildContext context) {

    bool isTesseled = false;
    var defaultColor = Colors.blue;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MIRAROAD',
          style: displayLarge(context),
        ),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.clear,
            color: Colors.red,
            size: 30,
          ),
        ),
      ),
      body: Column(children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 30, left: 10),
            alignment: Alignment.centerLeft,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 30,
                child: Icon(CupertinoIcons.pencil),
              ),
              title: Text('You can update the below fields',
                  style: displayXLGrey(context)),
            )),

        SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('Tesseling', style: displayLarge(context),),

            SizedBox(width: 20,),

            CustomSwitch(
              activeColor: Colors.blue,
              value: isTesseled,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  isTesseled = value;
                  defaultColor = isTesseled ? defaultColor = Colors.blue : defaultColor = Colors.green;
                });
              },
            ),

          ],
        ),

        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.only(left: 40, right: 40, top: 10),
            decoration: BoxDecoration(
                color: defaultColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(120))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'PACKEGING',
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'DISPATCH',
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Container(
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'UPDATE',
                        style: displayMedium(context),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
