import 'package:flutter/material.dart';

class InventoryStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inventory Status")),
      body: Center(child: Text("Check current stock and track stock movement")),
    );
  }
}
