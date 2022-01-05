import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdi/constants/widgetdesign.dart';

class AccountSettings extends StatefulWidget {
  static const String id='AccountSettings';
  const AccountSettings({Key? key}) : super(key: key);

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {

  final nameCtrl = TextEditingController();
  final mobCtrl = TextEditingController();

  bool validateValues(String name, String mob) {
    final nameRegExp = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
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

  String? domainvalue;
  var domainlist=<String> ['App Development','web development','data Science','Competitive Programming'];

  String? semvalue;
  var semlist=<String> ['1','2','3','4','5','6','7','8'];

  String? secvalue;
  var seclist=<String> ['A','B','C'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(79, 79, 79, 1),Color.fromRGBO(0, 0, 0, 1)],
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,size: 30,),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text('Account Settings',style: TextStyle(color: Colors.white,fontSize: 20),)),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 20,right: 200),
                  child: Text('Full Name',style: TextStyle(color: Colors.white,fontSize: 15),)),
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
              const Padding(
                  padding: EdgeInsets.only(top: 20,right: 230),
                  child: Text('Phone',style: TextStyle(color: Colors.white,fontSize: 15),)),
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
              const Padding(
                  padding: EdgeInsets.only(top: 20,right: 150,bottom: 10),
                  child: Text('Domain Of Interest',style: TextStyle(color: Colors.white,fontSize: 15),)),
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
                      });
                    },
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 35,top: 10,bottom: 50),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(right: 30,bottom: 10),
                            child: Text('semester',style: TextStyle(color: Colors.white),)),
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
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 70),
                    Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(right: 30,bottom: 10),
                            child: Text('section',style: TextStyle(color: Colors.white),)),
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
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: (){
                  if(validateValues(nameCtrl.text, mobCtrl.text)==true){
                    Navigator.pop(context);
                  }
                  //TODO:
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Colors.grey,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 40,right: 40,top: 15,bottom: 15),
                    child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 25,),),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
