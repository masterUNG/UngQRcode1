import 'package:flutter/material.dart';
import 'package:ungqrtest/screens/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Explicit

  // Method
  Widget signInButton() {
    return RaisedButton(
      color: Colors.purple.shade700,
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget signUpButton() {
    return OutlineButton(
      child: Text('Sign Up'),
      onPressed: () {
        print('You Click SignUp');

        MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext context)=>Register());
        Navigator.of(context).push(materialPageRoute);

      },
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signInButton(),
        SizedBox(
          width: 5.0,
        ),
        signUpButton(),
      ],
    );
  }

  Widget userText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'User :',
        ),
      ),
    );
  }

  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Password :',
        ),
      ),
    );
  }

  Widget showLogo() {
    return Container(
      width: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showAppName() {
    return Text(
      'Ung QR Test',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.purple.shade600,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pic.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(padding: EdgeInsets.all(20.0),
              color: Color.fromARGB(150, 255, 255, 255),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showLogo(),
                  showAppName(),
                  userText(),
                  passwordText(),
                  showButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
