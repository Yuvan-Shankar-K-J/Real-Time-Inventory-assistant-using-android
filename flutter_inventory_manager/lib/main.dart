import 'package:flutter/material.dart';
import 'masters.dart';
import 'inventory_status.dart';
import 'account_tracker.dart';
import 'bill_section.dart';
import 'orders.dart';
import 'purchase_orders.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inventory Manager',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inventory Manager Dashboard')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150', // Replace with a URL or local image for profile picture
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Yuvan Shankar', // Replace with the user's name
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'mckenzie@gmail.com', // Replace with the user's email
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
                setState(
                    () {}); // Ensure that the full-screen dashboard remains the main content
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Masters'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Masters()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.inventory_2),
              title: Text('Inventory Status'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InventoryStatus()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.track_changes),
              title: Text('Account Tracker'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountTracker()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.receipt),
              title: Text('Bill Section'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BillSection()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Orders'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Orders()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Purchase Orders'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PurchaseOrders()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InventoryStatus()),
                );
              },
            ),
          ],
        ),
      ),
      body: _buildFullScreenDashboard(), // Display the full-screen dashboard
    );
  }

  // Full-screen empty dashboard widget
  Widget _buildFullScreenDashboard() {
    return Container(
      color: Colors.grey[200], // Light background color
      child: Center(
        child: Text(
          'Full-Screen Dashboard',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
    );
  }
}
