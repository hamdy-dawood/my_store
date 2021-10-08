import 'package:flutter/material.dart';
class AccountScreen extends StatelessWidget {
  @override
  static String id='Account Screen';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('مرحبا'),
          ),
          ExpansionTile(title: Text('انشاء حساب'))

        ],
      ) ,
    );
  }
}
