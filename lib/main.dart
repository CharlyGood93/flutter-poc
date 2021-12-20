import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterpoc/credit_cards/credit_cards_page.dart';
import 'package:flutterpoc/biometric-authentication/page/fingerprint_page.dart';
import 'package:flutterpoc/charts/charts_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String title = 'Flutterito´s';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutterito´s'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  onButtonTap(Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            MyMenuButton(
              title: "Dirigir a Tarjetas.",
              actionTap: () {
                onButtonTap(
                  CreditCardConceptPage(),
                );
              },
            ),
            MyMenuButton(
              title: "Autenticación Biométrica.",
              actionTap: () {
                onButtonTap(
                  FingerprintPage(),
                );
              },
            ),
            MyMenuButton(
              title: "Ver gráficos.",
              actionTap: () {
                onButtonTap(
                  ChartsPage()
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenuButton extends StatelessWidget {
  final String? title;
  final VoidCallback? actionTap;

  MyMenuButton({this.title, this.actionTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialButton(
        height: 50.0,
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: new Text(title!),
        onPressed: actionTap,
      ),
    );
  }
}
