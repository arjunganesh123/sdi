import 'package:flutter/material.dart';
import 'package:sdi/constants/screendesign.dart';

class Logopage extends StatelessWidget {
  static const String id='logopage';

  const Logopage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Screendesign(childwidget: Image.asset('images/sdi_logo.png',scale: 3,),);
  }
}
