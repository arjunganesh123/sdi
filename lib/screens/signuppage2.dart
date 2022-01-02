import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdi/constants/screendesign.dart';
import 'package:sdi/constants/widgetdesign.dart';

import '../custom_icons_icons.dart';

class Signuppage2 extends StatefulWidget {
  static const String id='Signuppage2';
  const Signuppage2({Key? key}) : super(key: key);

  @override
  _Signuppage2State createState() => _Signuppage2State();
}

class _Signuppage2State extends State<Signuppage2> {

  final usnCtrl = TextEditingController();
  String semCtrl = '';
  String secCtrl = '';
  String domainctrl='';

  bool validateValues(String usn, String sem, String sec,String domain) {
    final usnRegExp = RegExp(r'^[a-zA-Z0-9]{10}');
    if(! usnRegExp.hasMatch(usn)) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Enter a Valid USN',
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
    if(sem=='') {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Enter a Valid Semester',
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
    if(sec=='') {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Enter a Valid Section',
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
    if(domain=='') {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Enter a Valid domain',
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
    return true;
  }
  String? domainvalue;
  var domainlist=<String> ['App Development','web development','data Science','Competitive Programming'];

  String? semvalue;
  var semlist=<String> ['1','2','3','4','5','6','7','8'];

  String? secvalue;
  var seclist=<String> ['A','B','C'];
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
                padding: EdgeInsets.only(top: 30),
                child: Icon(CustomIcons.profile_logo,size: 120,color: Color.fromRGBO(0, 0, 0, 0.55),)),
            Padding(
              padding: const EdgeInsets.only(left: 35,right: 35,top: 20),
              child: TextField(
                controller: usnCtrl,
                style: const TextStyle(color: Colors.white,fontSize: 16),
                cursorColor: Colors.white,
                onChanged: (value){

                },
                decoration: kuserdetails.copyWith(hintText: 'USN',hintStyle: const TextStyle(color: Colors.white,fontSize: 13)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 35,top: 10,bottom: 10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15,right: 10),
                    decoration: const BoxDecoration(
                      color: Color(0x4DFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: DropdownButton(items:semlist.map((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Center(child: Text(e,style: const TextStyle(color: Colors.white),)),
                      );
                    }).toList(),
                      value: semvalue,
                      dropdownColor: Colors.grey[900],
                      focusColor: Colors.black,
                      iconSize: 20,
                      menuMaxHeight: 150,
                      underline: const SizedBox(),
                      hint: const Center(
                        child: Text('Semester', style: TextStyle(fontSize: 15.0, color: Colors.white,),),),
                      icon: const Icon(Icons.arrow_drop_down,color: Colors.white,),
                      onChanged: (newvalue){
                        setState(() {
                          semvalue= newvalue! as String?;
                          semCtrl=semvalue!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 70),
                  Container(
                    padding: const EdgeInsets.only(left: 15,right: 10),
                    decoration: const BoxDecoration(
                      color: Color(0x4DFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: DropdownButton(items:seclist.map((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Center(child: Text(e,style: const TextStyle(color: Colors.white),)),
                      );
                    }).toList(),
                      value: secvalue,
                      dropdownColor: Colors.grey[900],
                      focusColor: Colors.black,
                      iconSize: 20,
                      underline: const SizedBox(),
                      hint: const Center(
                        child: Text('Section    ', style: TextStyle(fontSize: 15.0, color: Colors.white,),),),
                      icon: const Icon(Icons.arrow_drop_down,color: Colors.white,),
                      onChanged: (newvalue){
                        setState(() {
                          secvalue= newvalue! as String?;
                          secCtrl=secvalue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35,bottom: 30,right: 38),
              child: Container(
                padding: const EdgeInsets.only(right: 20,left: 15),
                decoration: const BoxDecoration(
                  color: Color(0x4DFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: DropdownButton(items:domainlist.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Center(child: Text(e,style: const TextStyle(color: Colors.white),)),
                    alignment: AlignmentDirectional.bottomCenter,
                  );
                }).toList(),
                  value: domainvalue,
                  icon: const Icon(Icons.arrow_drop_down,color: Colors.white,),
                  isExpanded: true,
                  dropdownColor: Colors.grey[900],
                  focusColor: Colors.black,
                  iconSize: 20,
                  underline: const SizedBox(),
                  hint: const Center(
                    child: Text('Choose Domain', style: TextStyle(fontSize: 20.0, color: Colors.white,),),),
                  onChanged: (newvalue){
                    setState(() {
                      domainvalue= newvalue! as String?;
                      domainctrl=domainvalue!;
                    });
                  },
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
                if(validateValues(usnCtrl.text,semCtrl,secCtrl, domainctrl)==true){

                }
                //TODO:
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.grey,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
                  child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 25,),),),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
