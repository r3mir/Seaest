import 'package:flutter/material.dart';
import 'package:projem/screens/appointment_screen.dart';
import 'package:projem/screens/home_screen.dart';
import 'package:projem/screens/login_screen.dart';
import 'package:projem/screens/profile_screen.dart';
import 'package:projem/screens/register_screen.dart'; 
import 'package:projem/screens/contact_screen.dart'; // 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Randevu Sistemi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login', // Başlangıç sayfası
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        '/appointment': (context) => AppointmentScreen(),
        '/contact': (context) => ContactScreen(), 
      },
    );
  }
}
