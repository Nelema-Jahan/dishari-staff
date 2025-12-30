import 'package:dishari/src/doctor/doctor_dashboard.dart';
import 'package:dishari/src/universal_login.dart';
import 'package:flutter/material.dart';
import 'package:backend_client/backend_client.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Serverpod client
  initServerpodClient();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dishari App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      // Named routes
      routes: {
        '/doctor-dashboard': (context) => const DoctorDashboard(),
        // add more routes here if needed
      },
    );
  }
}
