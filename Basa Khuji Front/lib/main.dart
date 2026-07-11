import 'package:flutter/material.dart';
import 'location_filter_screen.dart'; // Imports the file we just made

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basa Khuji Tenant',
      debugShowCheckedModeBanner: false, // Removes the red debug banner from the top corner
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true, // Uses modern Android UI styling components
      ),
      home: const LocationFilterScreen(), // Sets your location dropdown as the first screen!
    );
  }
}