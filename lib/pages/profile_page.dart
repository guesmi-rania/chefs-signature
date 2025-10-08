import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nom: John Doe"),
            SizedBox(height: 8),
            Text("Email: john@example.com"),
            SizedBox(height: 16),
            Text("Commandes passées:"),
            ListTile(title: Text("Tarte aux Fraises"), subtitle: Text("25 DT")),
            ListTile(title: Text("Éclair au Chocolat"), subtitle: Text("15 DT")),
          ],
        ),
      ),
    );
  }
}
