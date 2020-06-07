import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _MyLoginState();
}

class _MyLoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 12.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'User Name..'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 12.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'password..'),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 12.0),
                child: MaterialButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: () {
                    // Navigate back to first route when tapped.
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text('Login'),
                  minWidth: double.maxFinite,
                ))
          ],
        ),
      ),
    );
  }
}
