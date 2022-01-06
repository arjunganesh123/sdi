import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpAndSupport1 extends StatelessWidget {
  static const String id='HelpAndSupport1';
  const HelpAndSupport1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                        child: Text('Help And Support',style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 20,top: 70,bottom: 80),
                    child: Text('Thank You',style: TextStyle(color: Colors.white,fontSize: 50),)),
                const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('For reaching out\n         to us.\nWe\'ll get back to\n  you as soon as\n        we can.',style: TextStyle(color: Colors.white,fontSize: 30),)),
              ],
            ),
          ),
        )
    );
  }
}
