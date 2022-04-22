import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String? username;
  String? email;
  String? address;
  String? location;
  String? age;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('N O T E'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            username.toString(),
          ),
          Text(
            email.toString(),
          ),
          Text(
            address.toString(),
          ),
          Text(
            location.toString(),
          ),
          Text(
            age.toString(),
          ),
        ],
      )),
    );
  }

  void getNotes() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    username = pref.getString('username');
    email = pref.getString('email');
    address = pref.getString('address');
    location = pref.getString('location');
    age = pref.getString('age');
    print(age.toString());

    setState(() {});
  }
}
