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
      debugShowCheckedModeBanner: false,
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
  String userName = '';
  String password = '';
  FocusScopeNode focusScopeNode = FocusScopeNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FocusScope(
        node: focusScopeNode,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 12.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'User Name..'),
                onSubmitted: (String userName) {
                  if (userName.length < 4) {
                    showDialog<void>(
                        context: context,
                        builder: (BuildContext builderContext) {
                          return AlertDialog(
                            content: Text(
                                "User Name should be more than 4 characters"),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Ok"),
                              )
                            ],
                          );
                        });
                  } else {
                    this.userName = userName;
                    focusScopeNode.nextFocus();
                  }
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 12.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'password..'),
                  onSubmitted: (String password) {
                    if (password.length < 6) {
                      showDialog<void>(
                          context: context,
                          builder: (BuildContext builderContext) {
                            return AlertDialog(
                              content: Text(
                                  "password should be more than 6 characters"),
                              actions: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Ok"),
                                )
                              ],
                            );
                          });
                    } else {
                      this.password = password;
                    }
                  },
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 12.0),
                child: MaterialButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: () {
                    showDialog<void>(
                        context: context,
                        builder: (BuildContext builderContext) {
                          return AlertDialog(
                            content: Text("Welcome " + this.userName),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()));
                                },
                                child: Text("Ok"),
                              )
                            ],
                          );
                        });
                    // Navigate back to first route when tapped.
                  },
                  child: Text('Login'),
                  minWidth: double.maxFinite,
                ))
          ],
        ),
      ),
    ));
  }
}
