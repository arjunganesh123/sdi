import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Paymentpage1 extends StatelessWidget {
  static const String id='Paymentpage1';
  const Paymentpage1({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              const Center(child: Text('\n\n\t\t\tPayment\n Successful\n\n',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
              const Center(child: Text('Looking forward to your\n\n\t\t\t\t\t\tgrowth here at\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tSDI\n\n\n\n\n',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
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
                    padding: EdgeInsets.all(15),
                    child: Text('Return To Home',style: TextStyle(color: Colors.white,fontSize: 25,),),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
