import 'package:flutter/material.dart';

class AccountTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account Tracker")),
      body:
          Center(child: Text("Track expenses, payments, and account balances")),
    );
  }
}
