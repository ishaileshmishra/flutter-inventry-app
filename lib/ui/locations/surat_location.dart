import 'package:flutter/material.dart';
import 'package:product_inventry/utility/utils.dart';

class SuratPage extends StatefulWidget {
  @override
  _SuratPageState createState() => _SuratPageState();
}

class _SuratPageState extends State<SuratPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('SURAT', style: displayLarge(context),),
      ),

    );
  }
}