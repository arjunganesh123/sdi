import 'package:flutter/material.dart';
import 'package:sdi/constants/screendesign.dart';
import 'package:sdi/constants/widgetdesign.dart';
import '../custom_icons_icons.dart';

class Signuppage1 extends StatefulWidget {
  static const String id='Signuppage1';
  const Signuppage1({Key? key}) : super(key: key);

  @override
  _Signuppage1State createState() => _Signuppage1State();
}

class _Signuppage1State extends State<Signuppage1> {

  final nameCtrl = TextEditingController();
  final mobCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwdCtrl = TextEditingController();
  var password=null;

  bool validateValues(String name, String mob, String email, String passwd) {
    final nameRegExp = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if(! nameRegExp.hasMatch(name)) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Enter a Valid Name',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            backgroundColor: Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            behavior: SnackBarBehavior.floating,
          )
      );
      return false;
    }
    else if(! emailRegExp.hasMatch(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Enter a Valid Email',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            backgroundColor: Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            behavior: SnackBarBehavior.floating,
          )
      );
      return false;
    }
    else if(mob.length != 10) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Enter a Valid Mobile Number',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            backgroundColor: Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            behavior: SnackBarBehavior.floating,
          )
      );
      return false;
    }
    else {
      return true;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Screendesign(childwidget:SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 8, top: 35),
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 30,bottom: 10),
                child: Icon(CustomIcons.sign_up_logo,size: 120,color: Color.fromRGBO(0, 0, 0, 0.55),)),
            Padding(
              padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
              child: TextField(
                controller: nameCtrl,
                keyboardType: TextInputType.name,
                style: const TextStyle(color: Colors.white,fontSize: 16),
                cursorColor: Colors.white,
                decoration: kuserdetails.copyWith(hintText: 'Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
              child: TextField(
                controller: emailCtrl,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white,fontSize: 16),
                cursorColor: Colors.white,
                decoration: kuserdetails.copyWith(hintText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
              child: TextField(
                controller: mobCtrl,
                keyboardType: TextInputType.phone,
                style: const TextStyle(color: Colors.white,fontSize: 16),
                cursorColor: Colors.white,
                decoration: kuserdetails.copyWith(hintText: 'Phone Number'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35,right: 35,top: 10,bottom: 17),
              child: TextField(
                controller: passwdCtrl,
                obscureText: true,
                style: const TextStyle(color: Colors.white,fontSize: 16),
                cursorColor: Colors.white,
                onChanged: (value){
                  password=value;
                },
                decoration: kuserdetails.copyWith(hintText: 'Password'),
              ),
            ),
            FlatButton(
              onPressed: (){
                if(validateValues(nameCtrl.text, mobCtrl.text, emailCtrl.text, passwdCtrl.text) == true && password!=null) {

                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                          'Enter a Valid Password',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        backgroundColor: Colors.grey[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        behavior: SnackBarBehavior.floating,
                      )
                  );
                }
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.grey,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 50,right: 50,top: 5,bottom: 5),
                  child: Icon(Icons.arrow_forward,color: Colors.white,size: 40,),),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}