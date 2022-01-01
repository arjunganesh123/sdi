import 'package:flutter/material.dart';
import 'package:sdi/constants/screendesign.dart';
import 'package:sdi/constants/widgetdesign.dart';
import 'package:sdi/screens/signuppage1.dart';

import '../custom_icons_icons.dart';

class Loginpage extends StatefulWidget {
  static const String id='Loginpage';

  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  @override
  Widget build(BuildContext context) {
    return Screendesign(childwidget: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 120,bottom: 10),
                child: Icon(CustomIcons.sign_in_logo,size: 120,color: Color.fromRGBO(189, 195, 199, 0.8),)),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40,top: 40),
              child: TextField(
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white,fontSize: 22),
                autofocus: true,
                obscureText: false,
                onChanged:(value){

                } ,
                decoration: klogindetails.copyWith(hintText: 'USN'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 50),
              child: TextField(
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white,fontSize: 22),
                autofocus: true,
                obscureText: false,
                onChanged:(value){

                } ,
                decoration: klogindetails.copyWith(hintText: 'Password'),
              ),
            ),
            FlatButton(
              onPressed: (){
                //TODO:
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.grey,
                ),
                child: const Padding(
                    padding: EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 10),
                    child: Text('Login',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30,top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children:  [
                  const Text('New User',style: TextStyle(fontSize: 15,color: Colors.white),),
                  const SizedBox(width: 5,),
                  RawMaterialButton(
                      constraints: const BoxConstraints(),
                      onPressed: (){
                         Navigator.pushNamed(context, Signuppage1.id);
                      },
                      child: const Text('Click Here',style: TextStyle(fontSize: 10,color: Colors.blue),)),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}