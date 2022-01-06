import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdi/constants/widgetdesign.dart';
import 'package:sdi/screens/helpandsupport1.dart';

class HelpAndSupport extends StatefulWidget {
  static const String id='HelpAndSupport';
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  _HelpAndSupportState createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromRGBO(79, 79, 79, 1),Color.fromRGBO(0, 0, 0, 1)],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    padding: EdgeInsets.only(left: 45,top: 25,bottom: 25),
                    child: Text('Write To Us',style: TextStyle(color: Colors.white,fontSize: 20),)),
                Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35,top: 10,bottom: 20),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    style: const TextStyle(color: Colors.white,fontSize: 16),
                    cursorColor: Colors.white,
                    decoration: kuserdetails.copyWith(hintText: 'Full Name',contentPadding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide.none,
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35,top: 10,bottom: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.white,fontSize: 16),
                    cursorColor: Colors.white,
                    decoration: kuserdetails.copyWith(hintText: 'Email',contentPadding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide.none,
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35,top: 10,bottom: 50),
                  child: TextFormField(
                    minLines: 10,
                    maxLines: 10,
                    style: const TextStyle(color: Colors.white,fontSize: 20),
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(left: 20,top: 15,bottom: 10,right: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0x4DFFFFFF),
                      hintText: 'Message',
                      hintStyle: TextStyle(color: Colors.black38,fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80,bottom: 30),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, HelpAndSupport1.id);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 40,right: 40,top: 15,bottom: 15),
                        child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 25,),),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 30,bottom: 20),
                  child: Row(
                    children: const [
                      Icon(Icons.phone,color: Colors.white,size: 20,),
                      SizedBox(width: 20,),
                      Text('Reach out to us at',style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Text('+91 9999 333 444\nSiri Prakash\nPR,Marketing and Social Media coordinator\n\n+91 9999 333 444\nShah Adithya\nPR,Marketing and Treasurer',style: TextStyle(color: Colors.white,fontSize: 15),)),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 30,bottom: 20),
                  child: Row(
                    children: const [
                      Icon(Icons.mail,color: Colors.white,size: 20,),
                      SizedBox(width: 20,),
                      Text('Mail us at',style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Text('sdibangalorebit@gmail.com',style: TextStyle(color: Colors.white,fontSize: 15),)),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 30,bottom: 20),
                  child: Row(
                    children: const [
                      Icon(Icons.location_on,color: Colors.white,size: 20,),
                      SizedBox(width: 20,),
                      Text('Visit us at',style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 70,bottom: 40),
                    child: Text('Bangalore Institute Of Technology\nV.V.Puram\nBangalore',style: TextStyle(color: Colors.white,fontSize: 15),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}