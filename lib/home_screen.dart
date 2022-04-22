import 'package:flutter/material.dart';
import 'package:flutter_application_5/screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? username;
  String? email;
  String? address;
  String? location;
  String? age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (a) {
                  username = a;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Name',
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (b) {
                  email = b;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter Your Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (c) {
                  address = c;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                  hintText: 'Enter Your Address',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (d) {
                  location = d;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Loction',
                  hintText: 'Enter Your Loction',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (e) {
                  age = e;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                  hintText: 'Enter Your Age',
                ),
              ),
            ),
            // TextButton(
            //   onPressed: () {
            //     setNotesData(noteController.text);
            //   },
            //   child: Text('Save'),
            // ),
            ElevatedButton(
              onPressed: () async {
                final SharedPreferences pref =
                    await SharedPreferences.getInstance();
                pref.setString('username', username.toString());
                pref.setString('email', email.toString());
                pref.setString('location', location.toString());
                pref.setString('age', age.toString());
                pref.setString('address', address.toString());

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen()),
                );
              },
              child: Text('View Notes'),
            ),
          ],
        ),
      ),
    );
  }
}
