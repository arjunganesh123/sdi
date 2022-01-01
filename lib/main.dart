import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdi/screens/instructions.dart';
import 'package:sdi/screens/loginpage.dart';
import 'package:sdi/screens/logopage.dart';
import 'package:sdi/screens/signuppage1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Logopage(),
      routes: {
        Instruction.id:(context)=>const Instruction(),
        Loginpage.id:(context)=> const Loginpage(),
        Signuppage1.id:(context)=> const Signuppage1(),
      },
    );
  }
}
