import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Explicit

  // Method
  Widget registerButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {},
    );
  }

  Widget nameText() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.face,
          size: 48.0,
          color: Colors.orange[700],
        ),
        labelText: 'Display Name : ',
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.orange[700],
          fontSize: 18.0,
        ),
        helperText: 'Type Your Name in Blank',
        hintText: 'Englist Only',
      ),
    );
  }

  Widget emailText() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          size: 48.0,
          color: Colors.green[700],
        ),
        labelText: 'Email : ',
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[700],
          fontSize: 18.0,
        ),
        helperText: 'Type Your Email in Blank',
        hintText: 'you@email.com',
      ),
    );
  }

  Widget passwordText() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          size: 48.0,
          color: Colors.pink[700],
        ),
        labelText: 'Password : ',
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.pink[700],
          fontSize: 18.0,
        ),
        helperText: 'Type Your Password in Blank',
        hintText: 'more 6 Charactor',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        actions: <Widget>[registerButton()],
        title: Text('Register'),
      ),
      body: ListView(
        padding: EdgeInsets.all(50.0),
        children: <Widget>[
          nameText(),
          emailText(),
          passwordText(),
        ],
      ),
    );
  }
}
