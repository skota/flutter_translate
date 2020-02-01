import "package:flutter/material.dart";
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // var localizationDelegate = LocalizedApp.of(context).delegate;

    // print("current locale is: ${localizationDelegate.currentLocale}");

    return Scaffold(
      appBar: AppBar(
        title: Text(translate('app_bar.title')),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                translate("login.username"),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'joe@gmail.com'),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                translate("login.password"),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                obscureText: true,
                //decoration: InputDecoration(hintText: 'joe@gmail.com'),
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(translate('login.submit')),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
