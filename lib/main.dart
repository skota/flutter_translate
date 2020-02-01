import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import 'pages/login.dart';

void main() async {
  var delegate = await LocalizationDelegate.create(
      fallbackLocale: 'en_US', supportedLocales: ['en_US', 'es']);

  runApp(LocalizedApp(delegate, MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localizationDelegate = LocalizedApp.of(context).delegate;

    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: MaterialApp(
        title: 'Flutter Translate Demo',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          localizationDelegate
        ],
        supportedLocales: localizationDelegate.supportedLocales,
        locale: localizationDelegate.currentLocale,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // var localizationDelegate = LocalizedApp.of(context).delegate;
    return Scaffold(
      appBar: AppBar(
        title: Text(translate('app_bar.title')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Login - english"),
              onPressed: () {
                //change locale to english
                changeLocale(context, "en_US");

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Login(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              child: Text("Login - spanish"),
              onPressed: () {
                //change locale to spanish
                changeLocale(context, "es");
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Login(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
