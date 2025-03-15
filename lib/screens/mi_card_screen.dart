import 'package:flutter/material.dart';

class MiCardScreen extends StatelessWidget {
  const MiCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Card")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            SizedBox(height: 20),
            Text(
              "Nguyen Thanh Vinh",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 20, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(color: Colors.grey[400]),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.black),
                title: Text(
                  "+84 123 456 789",
                  style: TextStyle(fontFamily: "Lato"),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.black),
                title: Text("vinhnt.23it@vku.udn.vn"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
