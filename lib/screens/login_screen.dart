import 'package:flutter/material.dart';
import 'register_screen.dart'; 

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('SEAEST CLİNİC'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Şifre'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Giriş işlemleri
                // Navigator ile ana ekran'a geçiş yapabilirsiniz:
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Buton rengini siyah yapar
                onPrimary: Colors.white, // Yazı rengini beyaz yapar
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Kenarları yuvarlatır
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Center(
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ), // GİRİŞ YAP YAZI RENK
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
              
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text('Hesabınız yok mu? Kayıt Olun'),
            ),
          ],
        ),
      ),
    );
  }
}

