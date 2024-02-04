import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ProfileScreen extends StatelessWidget {
  final String phoneNumber = '+905355745236'; // Telefon numarası 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage('https://pixabay.com/vectors/blank-profile-picture-mystery-man-973460/'),
            ),
            SizedBox(height: 16.0),
            Text('Ad Soyad'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Profil düzenleme işlemleri
                // Navigator ile ana ekran'a geçiş yapabilirsiniz:
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text('Profil Düzenle'),
            ),
                SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Beni ara işlemleri
                _launchPhoneCall(phoneNumber);
              },
              child: Text('Beni Ara'),
            ),  
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Ana ekrana geri dön
                Navigator.pop(context);
              },
              child: Text('Geri'),
            ),
          ],
        ),
      ),
    );
  }
}
  // Telefon arama işlemi
  _launchPhoneCall(String phoneNumber) async {
    final Uri phoneLaunchUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunch(phoneLaunchUri.toString())) {
      await launch(phoneLaunchUri.toString());
    } else {
      throw 'Telefon araması başlatılamadı: $phoneLaunchUri';
    }
  }




