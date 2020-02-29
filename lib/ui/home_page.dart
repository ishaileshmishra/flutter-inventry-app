import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:product_inventry/ui/locations/mira_location.dart';
import 'package:product_inventry/ui/locations/surat_location.dart';
import 'package:product_inventry/utility/utils.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showModalSheet() {
      showModalBottomSheet(
          context: context,
          builder: (builder) {
            return Container(
              margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  ListTile(
                    title: Text('Which Warehouse', style: displayMedium(context),),
                    trailing: Icon(CupertinoIcons.location, color: Colors.pink,),
                  ),

                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MiraroadPage()),
                      );
                    },
                    trailing: Icon(CupertinoIcons.right_chevron),
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Icon(CupertinoIcons.location),
                    ),
                    title: Text('Miraroad'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SuratPage()),
                      );

                    },
                    trailing: Icon(CupertinoIcons.right_chevron),
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Icon(CupertinoIcons.location),
                    ),
                    title: Text('Surat'),
                  )
                ],
              ),
              padding: EdgeInsets.only(top: 10.0, bottom: 10),
            );
          });
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.clear,
              color: Colors.green,
              size: 30,
            ),
          ),
          title: Text(
            'INVENTORY',
            style: displayXL(context),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(40),
//              //margin: EdgeInsets.all(10),
//              decoration: BoxDecoration(
//                  color: Colors.grey[300],
//                  borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(40),
//                      bottomRight: Radius.circular(40))),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'BILL NUMBER',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'TOTAL CORRECT PIECE',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 40, top: 20, right: 40),
                decoration: BoxDecoration(
                    color: Colors.yellow[500],
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(180))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green),
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.business,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: Text('Warehouses',
                          style: TextStyle(
                              fontSize: 30.0,
                              letterSpacing: 2.0,
                              color: Colors.teal,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: Text('Which warehouse you\nprefere to shift',
                          style: TextStyle(
                            fontSize: 22.0,
                            letterSpacing: 2.0,
                            color: Colors.teal,
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'MIRAROAD',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'SURAT',
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 200,
                        child: RaisedButton(
                            onPressed: () {
                              _showModalSheet();
                            },
                            elevation: 3.0,
                            color: Colors.teal,
                            padding: EdgeInsets.all(20),
                            //splashColor: Colors.green,
                            child: Container(
                                child: Text(
                              'NEXT',
                              style: displayMedium(context),
                            ))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
