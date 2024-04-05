import 'package:flutter/material.dart';

class MyVehicleScreen extends StatelessWidget {
  const MyVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Vehicle'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Vehicle Name'),
            subtitle: Text('Toyota Camry'),
          ),
        ],
      ),
    );
  }
}
