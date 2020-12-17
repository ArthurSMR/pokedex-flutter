import 'package:flutter/material.dart';
import 'package:pokebla/view/login.dart';
import 'view/register.dart';
import 'package:firebase_core/firebase_core.dart';

Map<int, Color> color = {
  50: Color.fromRGBO(255, 218, 78, .1),
  100: Color.fromRGBO(255, 218, 78, .2),
  200: Color.fromRGBO(255, 218, 78, .3),
  300: Color.fromRGBO(255, 218, 78, .4),
  400: Color.fromRGBO(255, 218, 78, .5),
  500: Color.fromRGBO(255, 218, 78, .6),
  600: Color.fromRGBO(255, 218, 78, .7),
  700: Color.fromRGBO(255, 218, 78, .8),
  800: Color.fromRGBO(255, 218, 78, .9),
  900: Color.fromRGBO(255, 218, 78, 1),
};

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokebla',
      theme: ThemeData(
        canvasColor: Color(0xFFFFDA4E),
        primarySwatch: MaterialColor(0xFFFFDA4E, color),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Pokebla'),
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
  RegisterView register = new RegisterView();

  @override
  Widget build(BuildContext context) {
    return LoginView();
  }
}
