import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdi/screens/logopage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Navigator.pushNamed(context, Logopage.id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Logopage.id,
      routes: {
        Logopage.id:(context)=>const Logopage(),
      },
    );
  }
}
