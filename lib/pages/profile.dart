import 'package:flutter/material.dart';
import 'login.dart';

class ProfilePage extends StatefulWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String maleImg =
      'https://archives.bulbagarden.net/media/upload/1/1f/Sword_Shield_Victor.png';
  final String femaleImg =
      'https://archives.bulbagarden.net/media/upload/c/cd/Sword_Shield_Gloria.png';

  late String _photo = maleImg; // foto default

  Widget _pickButton(String url, Color color) {
    return GestureDetector(
      onTap: () => setState(() => _photo = url),
      child: CircleAvatar(
        radius: 22,
        backgroundColor: color,
        backgroundImage: NetworkImage(url),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.deepPurple.shade50,
              backgroundImage: NetworkImage(_photo),
            ),
            SizedBox(height: 8),
            Text(
              widget.username,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _pickButton(maleImg, Colors.blue),
                SizedBox(width: 8),
                _pickButton(femaleImg, Colors.pink),
              ],
            ),
            SizedBox(height: 12),
            Text(
              'Saya bersumpah mengerjakan soal kuis ini dengan cara yang jujur dan tidak curang dengan cara apapun',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            FilledButton.tonal(
              onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => LoginPage()),
                (route) => false,
              ),
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
