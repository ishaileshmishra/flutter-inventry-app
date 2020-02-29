import 'package:flutter/material.dart';
import 'package:product_inventry/ui/home_page.dart';
import 'package:product_inventry/utility/utils.dart';

class Inventory extends StatefulWidget {
  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Keep the appbar hidden and flush the login screen
      /// So user couldn't re visit to the login screen

//      appBar: AppBar(
//        automaticallyImplyLeading: true,
//        elevation: 2.0,
//        backgroundColor: Colors.grey,
//        centerTitle: true,
//      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35), color: Colors.green),
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.person,
              size: 35,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 80),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Hi Laura',
                      style: displayXL(context),
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'You have got 6 Unread Inventories',
                      style: displayXLGrey(context),
                    )),
                Expanded(
                  child: Container(
                      child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, i) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.yellow[500]),
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.verified_user,
                            size: 40,
                            color: Colors.orange,
                          ),
                        ),
                        title: Container(
                          child: Text(
                            'Sorry! for Inconvience, We are underdevelopment...',
                            style: displayMedium(context),
                          ),
                        ),
                        subtitle: Text(
                          'Bill No: blt8783443764',
                          //style: displaySmall(context),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                        },
                      );
                    },
                  )),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainPage()),
          );
        },
        child: Icon(Icons.add),
        tooltip: 'Add New Inventory',
      ),
    );
  }
}
