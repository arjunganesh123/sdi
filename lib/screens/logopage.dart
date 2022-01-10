import 'package:flutter/material.dart';
import 'package:sdi/constants/screendesign.dart';
import 'package:sdi/screens/instructions.dart';

class Logopage extends StatefulWidget {
  static const String id='logopage';

  const Logopage({Key? key}) : super(key: key);

  @override
  State<Logopage> createState() => _LogopageState();
}

class _LogopageState extends State<Logopage> {

  @override
  void initState() {
    _navigatetohome();
    super.initState();
  }

  _navigatetohome() async{
    //TODO: navigation if user is logged in already
    await Future.delayed(const Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Instruction()));
  }

  @override
  Widget build(BuildContext context) {
    return Screendesign(childwidget: Image.asset('images/sdi_logo.png',scale: 3,),);
  }
}
