import 'package:flutter/material.dart';


class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayıt Ol'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Ad Soyad'),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'E-posta'),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Şifre'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Kayıt işlemleri
              
                Navigator.pushReplacementNamed(context, '/profile');
              },
              child: Text('Kayıt Ol'),
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



