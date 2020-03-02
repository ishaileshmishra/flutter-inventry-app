import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_inventry/utility/utils.dart';

import 'own_page.dart';

const Color _kKeyUmbraOpacity = Color(0x33000000); // alpha = 0.2
const Color _kAmbientShadowOpacity = Color(0x1F000000); // alpha = 0.12


class SuratPage extends StatefulWidget {
  @override
  _SuratPageState createState() => _SuratPageState();
}

class _SuratPageState extends State<SuratPage> {
  final Map<int, Widget> children = const <int, Widget>{
    0: Text('OWN'),
    1: Text('JOB WORK'),
  };

  final Map<int, Widget> icons = const <int, Widget>{
    0: Center(
      child: OwnPage();
    ),
    1: Center(
      child: FlutterLogo(
        colors: Colors.teal,
        size: 200.0,
      ),
    ),
  };

  int currentSegment = 0;

  void onValueChanged(int newValue) {
    setState(() {
      currentSegment = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Surat',
          style: displayLarge(context),
        ),
        previousPageTitle: 'Inventory',
      ),
      child: DefaultTextStyle(
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(fontSize: 14),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(16.0)),
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 300.0,
                  child: CupertinoSegmentedControl<int>(
                    children: children,
                    onValueChanged: onValueChanged,
                    groupValue: currentSegment,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 32.0,
                    horizontal: 16.0,
                  ),
                  child: Builder(
                    builder: (BuildContext context) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 64.0,
                          horizontal: 16.0,
                        ),
                        decoration: BoxDecoration(
                          color: CupertinoTheme.of(context)
                              .scaffoldBackgroundColor,
                          borderRadius: BorderRadius.circular(3.0),


                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              offset: Offset(0.0, 3.0),
                              blurRadius: 5.0,
                              spreadRadius: -1.0,
                              color: _kKeyUmbraOpacity,
                            ),
                            BoxShadow(
                              offset: Offset(0.0, 6.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                              color: _kAmbientShadowOpacity,
                            ),

                          ],


                        ),
                        child: icons[currentSegment],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
