import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_icons_icons.dart';

class Profilepage extends StatefulWidget {
  static const String id='Profilepage';
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
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
              Padding(
                padding:const EdgeInsets.only(left: 40,right: 40),
                child:Container(
                  height:1.0,
                  color:Colors.white,),),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20,left: 25),
                child: Row(
                  children: [
                    const Icon(CustomIcons.profile_logo,size: 100,color: Color.fromRGBO(0, 0, 0, 0.55),),
                    const SizedBox(width: 7),
                    const Text('John Doe',style: TextStyle(color: Colors.white,fontSize: 15),),
                    const SizedBox(width: 80),
                    Column(
                      children: const [
                        Icon(Icons.logout_rounded,size: 25,color: Colors.white,),
                        Text('Logout',style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 40,right: 40),
                child:Container(
                  height:1.0,
                  color:Colors.white,),),
              FlatButton(
                onPressed: (){

                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 40,top: 100,bottom: 10),
                  child: Row(
                    children: const [
                      Icon(Icons.account_box_outlined,color: Colors.white,size: 20,),
                      SizedBox(width: 20),
                      Text('Account Settings',style: TextStyle(color: Colors.white,fontSize: 17),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 40,right: 40),
                child:Container(
                  height:1.0,
                  color:Colors.white,),),
              Padding(
                padding: const EdgeInsets.only(left: 40,top: 10,bottom: 10),
                child: Row(
                  children: const [
                    Icon(Icons.app_registration,color: Colors.white,size: 20,),
                    SizedBox(width: 20),
                    Text('Registration',style: TextStyle(color: Colors.white,fontSize: 17),),
                  ],
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 40,right: 40),
                child:Container(
                  height:1.0,
                  color:Colors.white,),),
              Padding(
                padding: const EdgeInsets.only(left: 40,top: 10,bottom: 10),
                child: Row(
                  children: const [
                    Icon(Icons.add_alert_rounded,color: Colors.white,size: 20,),
                    SizedBox(width: 20),
                    Text('Notification Settings',style: TextStyle(color: Colors.white,fontSize: 17),),
                  ],
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 40,right: 40),
                child:Container(
                  height:1.0,
                  color:Colors.white,),),
              Padding(
                padding: const EdgeInsets.only(left: 40,top: 10,bottom: 10),
                child: Row(
                  children: const [
                    Icon(Icons.announcement_outlined,color: Colors.white,size: 20,),
                    SizedBox(width: 20),
                    Text('Help And Support',style: TextStyle(color: Colors.white,fontSize: 17),),
                  ],
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 40,right: 40,bottom: 120),
                child:Container(
                  height:1.0,
                  color:Colors.white,),),
              const Text('SDI Club App \n        V1.1 \n\n     STUDENT \n  DEVELOPERS \n     INITIATIVE',style: TextStyle(color: Colors.white,fontSize: 17),),
            ],
          ),
        ),
      ),
    );
  }
}
