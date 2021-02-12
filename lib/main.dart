import 'package:app_3/config/config.dart';
import 'package:app_3/home_screen.dart';
import 'package:app_3/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      title: 'Plan App',
      //home:HomeScreen(),
      theme: ThemeData(
        primaryColor: primaryColor,
        //scaffoldBackgroundColor: kBackgroundColor,
        //primaryColor: KPrimaryColor,
        //textTheme: Theme.of(context).textTheme.apply(bodyColor:KTextColor),
        //visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      darkTheme: ThemeData(
        primaryColor: primaryColor,
        brightness: Brightness.dark,
      ),
      //primarySwatch: Colors.blue,
      // This makes the visual density adapt to the platform that you run
      // the app on. For desktop platforms, the controls will be smaller and
      // closer together (more dense) than on mobile platforms.
      //visualDensity: VisualDensity.adaptivePlatformDensity,

     );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
    );
  }
}
