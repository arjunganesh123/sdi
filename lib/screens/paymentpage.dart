import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdi/screens/paymentpage1.dart';

class PaymentScreen extends StatelessWidget {
  static const String id='PaymentScreen';
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
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
                    color: Colors.white,size: 40,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const Text('Join SDI Today',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
              const Text('\nOn Successful payment, take a\n\n\t\t\t\tscreenshot of the email you\n\nreceive on your registered mail ID\n\n\t\t\t\t\t\t\t\t\t\t\t\tand send it to\n\n\t\t\t\t\t\t\t\t\t\t+918320279863.\n\nCheck your spam folder if you\n\n\t\t\t\tdon\'t see the email in your\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tinbox\n',style: TextStyle(color: Colors.white,fontSize: 20)),
              const Text('<For any queries related to payment,\n\nyou can contact +918320279863 or\n\n\t\t\t\t\t\t\t\t\t\t\t+919902097631>\n',style: TextStyle(color: Colors.white,fontSize: 12)),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, Paymentpage1.id);
                  //TODO:
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 90,right: 100),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color.fromRGBO(255, 142, 83, 1),Color.fromRGBO(254, 107, 139, 1)]),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.account_balance_wallet_rounded,color: Colors.white,size: 50,),
                        Text('Pay 50',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}