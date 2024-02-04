
import 'package:flutter/material.dart';
import 'appointment_screen.dart'; 
import 'profile_screen.dart'; 

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Ekran'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hoş Geldiniz!'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppointmentScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Buton rengini siyah yapar
                onPrimary: Colors.white, // Yazı rengini beyaz yapar
              ),
              child: Text('Randevu Al'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
             
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Buton rengini siyah yapar
                onPrimary: Colors.white, // Yazı rengini beyaz yapar
              ),
              child: Text('Profil'),
            ),
          ],
        ),
      ),
    );
  }
}

