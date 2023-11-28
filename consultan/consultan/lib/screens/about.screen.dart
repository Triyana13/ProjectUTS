import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage("images/mypoto.jpeg"),
            ),
            SizedBox(height: 16.0),
            Text(
              'Triyana Rahmat',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'NPM - 21552011013',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 32.0), // Jarak tambahan sebelum footer

            Spacer(),
            // Footer
            Container(
              padding: EdgeInsets.all(8.0),
              color: Color.fromARGB(255, 255, 255, 255),
              child: Text(
                '© 2023 Tugas Project UTS.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
