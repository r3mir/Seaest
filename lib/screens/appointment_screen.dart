import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randevu Alma Ekranı'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Randevu Alma Ekranı'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Buton rengini siyah yapar
                onPrimary: Colors.white, // Yazı rengini beyaz yapar
                minimumSize: Size(double.infinity, 48), // Genişlik ekler
              ),
              child: Text('Randevu Tarihi Seç'),
            ),
            SizedBox(height: 8.0),
            Text('Seçilen Tarih: ${selectedDate.toLocal()}'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Buton rengini siyah yapar
                onPrimary: Colors.white, // Yazı rengini beyaz yapar
                minimumSize: Size(double.infinity, 48), // Genişlik ekler
              ),
              child: Text('Randevu Saati Seç'),
            ),
            SizedBox(height: 8.0),
            Text('Seçilen Saat: ${selectedTime.format(context)}'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Randevu alma işlemleri
                _showConfirmationDialog();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Buton rengini siyah yapar
                onPrimary: Colors.white, // Yazı rengini beyaz yapar
                minimumSize: Size(double.infinity, 48), // Genişlik ekler
              ),
              child: Text('Randevu Al'),
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

  Future<void> _showConfirmationDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Randevu Alındı'),
          content: Text('Randevunuz başarıyla alındı!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(); // Randevu alma ekranından çık
              },
              child: Text('Tamam'),
            ),
          ],
        );
      },
    );
  }
}

/*
import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randevu Alma Ekranı'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Randevu Alma Ekranı'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text('Randevu Tarihi Seç'),
            ),
            SizedBox(height: 8.0),
            Text('Seçilen Tarih: ${selectedDate.toLocal()}'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: Text('Randevu Saati Seç'),
            ),
            SizedBox(height: 8.0),
            Text('Seçilen Saat: ${selectedTime.format(context)}'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Randevu alma işlemleri
                _showConfirmationDialog();
              },
              child: Text('Randevu Al'),
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

  Future<void> _showConfirmationDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Randevu Alındı'),
          content: Text('Randevunuz başarıyla alındı!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(); // Randevu alma ekranından çık
              },
              child: Text('Tamam'),
            ),
          ],
        );
      },
    );
  }
}
*/