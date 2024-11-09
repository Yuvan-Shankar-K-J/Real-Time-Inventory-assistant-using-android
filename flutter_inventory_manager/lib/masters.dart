import 'package:flutter/material.dart';

class Masters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Masters")),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Party Master"),
            subtitle: Text("Manage party data"),
            onTap: () => _navigateWithAnimation(context, PartyMasterScreen()),
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text("Product Master"),
            subtitle: Text("Manage product data"),
            onTap: () => _navigateWithAnimation(context, ProductMasterScreen()),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Address Book"),
            subtitle: Text("Manage addresses"),
            onTap: () => _navigateWithAnimation(context, AddressBookScreen()),
          ),
          ListTile(
            leading: Icon(Icons.directions_car),
            title: Text("Vehicle Master"),
            subtitle: Text("Manage vehicles"),
            onTap: () => _navigateWithAnimation(context, VehicleMasterScreen()),
          ),
        ],
      ),
    );
  }

  // Custom function for animated navigation
  void _navigateWithAnimation(BuildContext context, Widget page) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0); // Slide in from the right
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }
}

// Subsection widgets defined within the same file

class PartyMasterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Party Master")),
      body: Center(child: Text("Manage party data here")),
    );
  }
}

class ProductMasterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Master")),
      body: Center(child: Text("Manage product data here")),
    );
  }
}

class AddressBookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Address Book")),
      body: Center(child: Text("Manage addresses here")),
    );
  }
}

class VehicleMasterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehicle Master")),
      body: Center(child: Text("Manage vehicle data here")),
    );
  }
}
